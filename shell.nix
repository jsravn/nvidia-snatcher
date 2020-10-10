let
  pkgs = import <nixpkgs> { config.allowUnfree = true; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
		nodejs
  ];
  shellHook = ''
      export NPM_CONFIG_USERCONFIG = "$XDG_CONFIG_HOME/npm/config";
      export NPM_CONFIG_CACHE      = "$XDG_CACHE_HOME/npm";
      export NPM_CONFIG_TMP        = "$XDG_RUNTIME_DIR/npm";
      export NPM_CONFIG_PREFIX     = "$XDG_CACHE_HOME/npm";
      export NODE_REPL_HISTORY     = "$XDG_CACHE_HOME/node/repl_history";
  '';
}

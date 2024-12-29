{
  description = "Nix Community Templates";

  outputs = {self}: let
    mkWelcomeText = {
      name,
      description,
      path,
    }: {
      inherit path;

      description = name;

      welcomeText = ''
        # ${name}
        ${description}

        ## Other tips
        Setup the git repo

        ```
        git init
        ```
      '';
    };
  in {
    templates = {
      empty = mkWelcomeText {
        name = "Empty Template";
        description = ''
          A simple flake that provides a devshell
        '';
        path = ./empty;
      };
      rust = mkWelcomeText {
        name = "Empty Template";
        description = ''
          A rust template with rust overlay in the flake

          change the `name` in the `Cargo.toml`
        '';
        path = ./rust;
      };
    };
  };
}

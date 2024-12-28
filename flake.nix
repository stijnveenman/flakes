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
        To load the new devShell run:

        ```
            direnv allow
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
        path = ./empty;
      };
    };
  };
}

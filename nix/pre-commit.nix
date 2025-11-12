{
  perSystem = {
    config,
    inputs',
    pkgs,
    ...
  }: let
    inherit (inputs'.bake.packages) bake;
  in {
    pre-commit = {
      check.enable = true;

      settings.hooks = {
        alejandra.enable = true;
        deadnix.enable = true;
        markdownlint = {
          enable = true;
          settings.configuration = {
            MD013.line_length = 100;
            MD059.prohibited_texts = [];
          };
        };
        nil.enable = true;
        statix.enable = true;
        typstyle.enable = true;

        # Makefile validation and formatting
        mbake-validate = {
          enable = true;
          name = "mbake validate";
          description = "Run 'mbake validate' for Makefile validation";
          entry = "mbake validate";
          types = ["makefile"];
          require_serial = true;
          pass_filenames = true;
          extraPackages = [bake];
        };

        mbake-format = {
          enable = true;
          name = "mbake format";
          description = "Run 'mbake format' for Makefile formatting";
          entry = "mbake format";
          types = ["makefile"];
          require_serial = true;
          pass_filenames = true;
          extraPackages = [bake];
        };
      };
    };

    apps.install-hooks = {
      type = "app";
      program = toString (pkgs.writeShellScript "install-hooks" ''
        ${config.pre-commit.installationScript}
        echo Done!
      '');
      meta.description = "install pre-commit hooks";
    };
  };
}

{
  perSystem = {
    config,
    lib,
    pkgs,
    ...
  }: let
    # using pre-commit module we create in pre-commit.nix
    inherit (config) pre-commit;

    font = {type}: pkg: "${pkg}/share/fonts/${type}";

    TrueTypeFont = font {type = "truetype";};
    OpenTypeFont = font {type = "opentype";};
  in {
    devShells.default = pkgs.mkShell {
      nativeBuildInputs =
        [pkgs.typst]
        ++ pre-commit.settings.enabledPackages;

      env.TYPST_FONT_PATHS = lib.concatStringsSep ":" (with pkgs; [
        (TrueTypeFont roboto)
        (OpenTypeFont font-awesome)
        (OpenTypeFont source-sans-pro)
      ]);

      shellHook = pre-commit.installationScript;
    };
  };
}

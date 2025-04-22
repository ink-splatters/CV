{
  description = "typst-based modern cv";

  inputs = {
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
  };
  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} (let
      systems = import inputs.systems;
    in {
      inherit systems;

      perSystem = {
        pkgs,
        lib,
        ...
      }: let
        font = {type}: pkg: "${pkg}/share/fonts/${type}";

        TrueTypeFont = font {type = "truetype";};
        OpenTypeFont = font {type = "opentype";};
      in {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            gnumake
            typst
            typstyle
          ];

          env.TYPST_FONT_PATHS = lib.concatStringsSep ":" (with pkgs; [
            (TrueTypeFont roboto)
            (OpenTypeFont font-awesome)
            (OpenTypeFont source-sans-pro)
          ]);
        };
        formatter = pkgs.alejandra;
      };
    });
}

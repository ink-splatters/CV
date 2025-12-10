{
  description = "typst-based modern cv";

  inputs = {
    bake = {
      url = "github:ink-splatters/bake?ref=v1.4.6-dev";
      inputs = {
        flake-parts.follows = "flake-parts";
	nixpkgs.follows = "nixpkgs";
        systems.follows = "systems";
      };
    };
    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
  };

  nixConfig = {
    extra-substituters = [
      "https://aarch64-darwin.cachix.org"
      "https://pre-commit-hooks.cachix.org"
    ];
    extra-trusted-public-keys = [
      "aarch64-darwin.cachix.org-1:mEz8A1jcJveehs/ZbZUEjXZ65Aukk9bg2kmb0zL9XDA="
      "pre-commit-hooks.cachix.org-1:Pkk3Panw5AW24TOv6kz3PvLhlH8puAsJTBbOPmBo7Rc="
    ];
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} (let
      systems = import inputs.systems;
    in {
      imports = [
        inputs.git-hooks.flakeModule
        ./nix/dev-shell.nix
        ./nix/formatter.nix
        ./nix/pre-commit.nix
      ];

      inherit systems;
    });
}

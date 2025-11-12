{
  perSystem = {
    pkgs,
    inputs',
    ...
  }: let
    inherit (inputs'.bake.packages) bake;
  in {
    formatter = pkgs.writeShellApplication {
      name = "formatter";
      runtimeInputs = with pkgs; [alejandra typstyle bake];
      text = ''
        echo running alejandra...
        alejandra .

        echo running bake...
        mbake format Makefile

        echo running typstyle...
        typstyle . -i
      '';
    };
  };
}

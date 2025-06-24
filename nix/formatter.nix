{
  perSystem = {pkgs, ...}: {
    formatter = pkgs.writeShellApplication {
      name = "formatter";
      runtimeInputs = with pkgs; [alejandra typstyle];
      text = ''
        echo running alejandra...
        alejandra .
        echo running typstyle...
        typstyle . -i
      '';
    };
  };
}

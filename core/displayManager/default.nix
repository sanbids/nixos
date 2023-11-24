{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager = {
      sddm.enable = true;
      sddm.theme = "${import ./theme.nix {inherit pkgs;}}";
    };
  };
}

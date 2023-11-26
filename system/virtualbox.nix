{ pkgs, ... }: {
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "sanbid" ];
  virtualisation.virtualbox.guest.enable = true;
  # virtualisation.virtualbox.guest.x11 = true;
}

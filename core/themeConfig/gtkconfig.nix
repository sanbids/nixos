{ config, lib, pkgs, ... }: {

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Amber";
    size = 32;
  };

  gtk = {
    enable = true;
    font = {
      name = "source code pro 12";
    };

    cursorTheme = {
      name = "catppuccin-cursors";
      package = pkgs.catppuccin-cursors;
    };

    theme = {
      name = "sweet";
      package = pkgs.sweet;
    };
  };
}

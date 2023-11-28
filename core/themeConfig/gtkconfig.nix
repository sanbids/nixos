{ config, lib, pkgs, ... }: {

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  gtk = {
    enable = true;
    font = {
      name = "source code pro 12";
    };

    iconTheme = {
      name = "Paper";
      package = pkgs.paper-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
    };

    theme = {
      name = "tokyo-night";
      package = pkgs.tokyo-night-gtk;
    };
  };
}

{ nixpkgs, config, ... }:
{
  imports = [
    ./zsh.nix
    ./kitty
    ./bash.nix
  ];

  xdg.configFile = {
    "hypr" = {
      source = ./hypr;
      recursive = true;
    };
    "vivid" = {
      source = ./vivid;
      recursive = true;
    };

    "wofi" = {
      source = ./wofi;
      recursive = true;
    };

    "wpaperd" = {
      source = ./wpaperd;
      recursive = true;
    };

    "waybar" = {
      source = ./waybar;
      recursive = true;
    };

    "tmux" = {
      source = ./tmux;
      recursive = true;
    };

    "fish" = {
      source = ./fish;
      recursive = true;
    };

    "starship.toml" = {
      source = ./starship.toml;
    };

    "starship_cat.toml" = {
      source = ./starship_cat.toml;
    };

  };

  home.file."wallpaper" = {
    source = ./wallpaper;
    recursive = true;
  };



}

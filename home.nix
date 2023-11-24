{ config, pkgs, ... }:

{
  imports = [
    ./core
    ./development
    ./config
  ];
  home.username = "sanbid";
  home.homeDirectory = "/home/sanbid";

  home.stateVersion = "23.05";
  home.packages = [
  ];

  home.file = { };

  

  home.sessionVariables = { };
  home.enableNixpkgsReleaseCheck = false;

  #enable zsh
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

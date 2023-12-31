# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./core/displayManager
    ./system/virtualbox.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 5;

  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;
  programs.virt-manager.enable = true;


  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services.printing.enable = true;

  nixpkgs.config.allowUnfree = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  time.timeZone = "Asia/Kathmandu";

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sanbid = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "docker" "libvirtd" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      firefox
      tree
    ];
  };

  # enable thunar
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce;  [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  services.gvfs.enable = true; # Mount, trash, and other functionalities
  services.tumbler.enable = true; # Thumbnail support for images

  networking.nameservers = [ "3.3.3.3" "1.1.1.1" ];

  virtualisation.docker.enable = true;

  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };


  programs.fish.enable = true;
  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs;
    [
      vim
      wget
      neovim
      nodejs_21
      yarn
      kitty
      alacritty
      wl-clipboard
      libgcc
      gccgo
      gnumake
      git
      xdg-desktop-portal-hyprland
      waybar
      wofi
      firefox-wayland
      networkmanager
      bun
      eza
      starship
      zoxide
      tmux
      vivid
      ripgrep
      fd
      fzf
      oh-my-zsh
      lsd
      wpaperd
      brightnessctl
      xfce.thunar
      xfce.thunar-volman
      appimage-run
      gvfs
      dconf
      gnome.gvfs
      woeusb
      htop
      btop
      entr
      gparted
      nwg-look
      nwg-dock-hyprland
      nwg-launchers
      nwg-displays
      libsForQt5.qt5.qtquickcontrols2
      libsForQt5.qt5.qtgraphicaleffects
      nix-prefetch-git
      fish
      bat
      libinput-gestures
      sway-audio-idle-inhibit
      swayidle
      polkit_gnome
      copyq
      mako
      libsForQt5.dolphin
      sway-contrib.grimshot
      vlc
      galculator
      wpsoffice
      imv
      feh
      blueman
      pavucontrol
      dunst
      obsidian
      spotify
      woeusb
      progress
      tealdeer
      eww
      glib
      docker
      lazygit
      gdu
      swww
      python3Full
    ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    source-code-pro
    jetbrains-mono
    (nerdfonts.override { fonts = [ "Hack" "DroidSansMono" ]; })
  ];

  services.xserver.desktopManager.xfce.enable = true;
  security.polkit.enable = true;
  system.stateVersion = "23.11"; # Did you read the comment?
  nix.settings.experimental-features = "nix-command flakes";

}


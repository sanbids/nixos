{ nixpkgs, config, ... }:
{
  imports = [
    ./starship.nix
    ./zsh.nix
    ./kitty
    ./bash.nix
  ];

  xdg.configFile = {


    "hypr" = {
      source = ./hypr;
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


  };

}

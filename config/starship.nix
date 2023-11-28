{
  programs.starship = {
    enable = true;
  };

  xdg.configFile = {
    "starship" = {
      source = ./starship.toml;
      recursive = true;
    };
  };
}

{
  # enable bash
  programs.bash = {
    enable = true;
    shellAliases = {
      ".." = "cd ..";
      ls = "lsd";
      ll = "lsd -l --header";
      la = "lsd  -a";
      lla = "lsd  -al --header";
      zzz = "lvim ~/.zshrc";
      fd = "fd --hidden";
      rg = "rg --hidden --no-messages";
      xprop = "hyprprop";
      cat = "bat --theme=zenburn --style=plain";
      ip = "ip -c";
      #  yay="paru";
      icat = "kitty +kitten icat";
      xampp = "sudo xampp";
      v = "NVIM_APPNAME=astronvim nvim";
      Supdate = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      Sinstall = "sudo nvim ~/.dotfiles/configuration.nix";
      Hupdate = "home-manager switch --flake ~/.dotfiles";
      Hinstall = "nvim ~/.dotfiles/home.nix";

    };

  };
}

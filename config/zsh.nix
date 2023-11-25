{ config, lib, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    autocd = true;

    zplug = {
      enable = true;
      plugins = [
        {
          name = "jeffreytse/zsh-vi-mode";
        }
        {
          name = "zsh-users/zsh-syntax-highlighting";
        }
        {
          name = "hlissner/zsh-autopair";
        }
        {
          name = "zshzoo/cd-ls";
        }
      ];
    };


    envExtra = ''
      export VISUAL='nvim'
      export PAGER="less"
      export EDITOR='nvim'
      export TERMINAL='kitty'
      export BROWSER='thorium-browser'
      export PATH=~/.local/bin/:$PATH
      export PATH=~/.bun/bin/:$PATH
      export QT_DEBUG_PLUGINS=1
      export OPENAI_API_KEY="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"
       export PATH=~/.cargo/bin:$PATH
    '';

    shellAliases = {
      ".." = "cd ..";
      ls = "lsd";
      ll = "lsd -l --header";
      la = "lsd  -a";
      lla = "lsd  -al --header";
      zzz = "nvim ~/.dotfiles/config/zsh.nix";
      fd = "fd --hidden";
      rg = "rg --hidden --no-messages";
      xprop = "hyprprop";
      cat = "bat --theme=zenburn --style=plain";
      ip = "ip -c";
      icat = "kitty +kitten icat";
      v = "NVIM_APPNAME=astronvim nvim";
      Supdate = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      Sinstall = "sudo nvim ~/.dotfiles/configuration.nix";
      Hupdate = "home-manager switch --flake ~/.dotfiles";
      Hinstall = "nvim ~/.dotfiles/home.nix";
      c = "clear";
    };

    initExtra = ''
      export LS_COLORS="$(vivid generate $HOME/.config/vivid/colorscheme-lsd.yaml)"
      ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
        eval "$(zoxide init zsh)"
        eval "$(starship init zsh)"
        if [ -z "$TMUX" ]
          then
            tmux attach -t TMUX || tmux new -s TMUX
            fi
    '';
  };


  # plugins = with pkgs; [
  #   {
  #     name = "zsh-syntax-highlighting";
  #     src = fetchFromGitHub
  #       {
  #         owner = "zsh-users";
  #         repo = "zsh-syntax-highlighting";
  #         rev = "bb27265aeeb0a22fb77f1275118a5edba260ec47";
  #         sha256 = "0vdj0saw0zr99w2p5148zgd0wljg6j3yc7ip3fsxn07bk42hxhm6";
  #       };
  #   }
  #   {
  #     name = "zsh-autopair";
  #     src = fetchFromGitHub {
  #       owner = "hlissner";
  #       repo = "zsh-autopair";
  #       rev = "396c38a7468458ba29011f2ad4112e4fd35f78e6";
  #       sha256 = "0q9wg8jlhlz2xn08rdml6fljglqd1a2gbdp063c8b8ay24zz2w9x";
  #     };
  #   }
  #
  #   {
  #     name = "zsh-vim-mode";
  #     src = fetchFromGitHub {
  #       owner = "jeffreytse";
  #       repo = "zsh-vi-mode";
  #       rev = "ea1f58ab9b1f3eac50e2cde3e3bc612049ef683b";
  #       sha256 = "0bs5p6p5846hcgf3rb234yzq87rfjs18gfha9w0y0nf5jif23dy5";
  #     };
  #   }
  #
  # ];
  #

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}

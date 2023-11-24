{
  programs.zsh = {
    enable = true;
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

    autocd = true;
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
      c = "clear";

    };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
      extraConfig = ''
                export LS_COLORS="$(vivid generate $HOME/.config/vivid/colorscheme-lsd.yaml)"
                  eval "$(zoxide init zsh)"
                  eval "$(starship init zsh)"
                    source ~/.oh-my-zsh/custom/plugins/cd-ls/cd-ls.plugin.zsh
                    source ~/.oh-my-zsh/custom/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
                    source ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
                                  ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
                                  if [ -z "$TMUX" ]
        then
            tmux attach -t TMUX || tmux new -s TMUX
        fi

      '';
    };

  };

}

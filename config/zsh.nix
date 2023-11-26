{ config, lib, pkgs, ... }: {


  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    historySubstringSearch = {
      enable = true;
    };
    syntaxHighlighting.enable = true;

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
      #  ┬ ┬┌─┐┬┌┬┐┬┌┐┌┌─┐  ┌┬┐┌─┐┌┬┐┌─┐
      #  │││├─┤│ │ │││││ ┬   │││ │ │ └─┐
      #  └┴┘┴ ┴┴ ┴ ┴┘└┘└─┘  ─┴┘└─┘ ┴ └─┘
      expand-or-complete-with-dots() {
        echo -n "\e[31m…\e[0m"
        zle expand-or-complete
        zle redisplay
      }
      zle -N expand-or-complete-with-dots
      bindkey "^I" expand-or-complete-with-dots


       # ┌─┐┌─┐┬ ┬  ┌─┐┌─┐┌─┐┬    ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐
       # ┌─┘└─┐├─┤  │  │ ││ ││    │ │├─┘ │ ││ ││││└─┐
       # └─┘└─┘┴ ┴  └─┘└─┘└─┘┴─┘  └─┘┴   ┴ ┴└─┘┘└┘└─┘
      setopt AUTOCD              # change directory just by typing its name
      setopt PROMPT_SUBST        # enable command substitution in prompt
      setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
      setopt LIST_PACKED		   # The completion menu takes less space.
      setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
      setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
      setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
      setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.zoxide.enableZshIntegration = true;
  programs.starship.enableZshIntegration = true;
  programs.dircolors.enableZshIntegration = true;
  programs.kitty.shellIntegration.enableZshIntegration = true;

}

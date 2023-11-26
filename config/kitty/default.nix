{

  programs.kitty = {
    enable = true;
    # Pick "name" from https://github.com/kovidgoyal/kitty-themes/blob/master/themes.json
    theme = "Wez";
    font = {
      name = "source code pro";
      size = 18.5;
    };
    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";

    };
    settings = {
      enable_audio_bell = "no";
      initial_window_width = "95c";
      initial_window_height = "35c";
      window_padding_width = "20";
      tab_bar_edge = "bottom";
      confirm_os_window_close = "2";
      cursor_blink_interval = "0";
      mouse_hide_wait = "3";
      default_pointer_shape = "arrow";
      show_hyperlink_targets = "yes";
      clear_all_shortcuts = "yes";
    };
  };
}

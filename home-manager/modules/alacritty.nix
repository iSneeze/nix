{programs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.90;
      window.padding.x = 2;
      window.padding.y = 2;

      keyboard.bindings = [
        {
          key = "Right";
          mods = "Alt";
          chars = "\u001BF";
        }
        {
          key = "Left";
          mods = "Alt";
          chars = "\u001BB";
        }
      ];

      colors.primary = {
        background = "#1d1f21";
        foreground = "#c5c8c6";
      };
      colors.cursor = {
        text = "#1d1f21";
        cursor = "#ffffff";
      };
      colors.normal = {
        black = "#1d1f21";
        red = "#cc6666";
        green = "#b5bd68";
        yellow = "#e6c547";
        blue = "#81a2be";
        magenta = "#b294bb";
        cyan = "#70c0ba";
        white = "#373b41";
      };
      colors.bright = {
        black = "#666666";
        red = "#ff3334";
        green = "#9ec400";
        yellow = "#f0c674";
        blue = "#81a2be";
        magenta = "#b77ee0";
        cyan = "#54ced6";
        white = "#282a2e";
      };

      font = {
        size = 13.0;
        # draw_bold_text_with_bright_colors = true;
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
      };
    };
  };
}

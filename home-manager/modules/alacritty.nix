{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.90;

      font = {
        size = 13.0;
        # draw_bold_text_with_bright_colors = true;
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
      };

      colors.primary.background = "#1d2021";
    };
  };
}

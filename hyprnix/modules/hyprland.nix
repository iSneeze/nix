{
  programs.hyprland.enable = true;
  services.pipewire.wireplumber.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "Hyprland";
        user = "flo";
      };
      # default_session = initial_session;
    };

  };
}
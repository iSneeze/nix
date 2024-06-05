{
  services.xserver = {
    enable = true;
    # windowManager.hyprland.enable = true;

    # displayManager = {
    #   autoLogin.enable = true;
    #   autoLogin.user = "amper";
    #   lightdm.enable = true;
    # };

    xkb.layout = "de";
    xkb.Variant = "";

    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
      #touchpad.accelProfile = "flat";
    };

    videoDrivers = ["amdgpu"];
    deviceSection = ''Option "TearFree" "True"'';

    displayManager.sddm.enable = true;
  };
}

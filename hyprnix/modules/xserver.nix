{
  services.xserver = {
    enable = true;

    # displayManager = {
    #   autoLogin.enable = true;
    #   autoLogin.user = "flo";
    #   lightdm.enable = true;
    # };

    xkb.layout = "de";
    xkb.Variant = "";

    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
    };

    videoDrivers = ["amdgpu"];
    deviceSection = ''Option "TearFree" "True"'';

    displayManager.sddm.enable = true;
  };
}

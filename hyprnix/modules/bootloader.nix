{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = ["amdgpu"];
  boot.kernelParams = [
    "video=DP-2:2560x1440@144"
    "video=DP-3:2560x1440@60"
    "video=HDMI-1:2560x1440@60"
  ];
}

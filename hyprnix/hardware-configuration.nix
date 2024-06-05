# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];
  
  boot.kernelPackages = pkgs.linuxPackages_zen;

  boot.kernelParams = [ "systemd.unified_cgroup_hierarchy=0" ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" "amdgpu"];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/721e2037-1800-4ceb-b205-f0cf23b692b6";
      fsType = "ext4";
    };

  fileSystems."/mnt/Storage" =
    { device = "/dev/disk/by-uuid/2C04-B028";
      fsType = "exfat";
      options = [ "defaults" "user" "umask=000" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/8AFB-DE65";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/ce340949-0529-4f7e-bcdf-dcb18a30553c"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eno1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  hardware.xone.enable = true; environment.systemPackages = with pkgs; [ linuxKernel.packages.linux_zen.xone ];
}
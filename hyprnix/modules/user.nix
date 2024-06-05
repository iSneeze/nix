{pkgs, ...}: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.flo = {
      isNormalUser = true;
      description = "Florian";
      extraGroups = ["networkmanager" "wheel" "input" "audio"];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  # services.getty.autologinUser = "flo";
}

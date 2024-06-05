{ config, pkgs, ...}:  {

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "flo";
    homeDirectory = "/home/flo";
    stateVersion = "23.11";
  };
}
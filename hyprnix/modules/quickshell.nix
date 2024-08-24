{
  environment.systemPackages = with pkgs; [
    quickshell.packages.${system}.default
  ];
}

{
  lib,
  config,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakeDir = "~/nix";
    in {
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      update = "nix flake update ${flakeDir}";
      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hmswitch = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      ls = "eza --icons";
      ll = "eza --icons -l";
      la = "eza --icons -al";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
      server = "ssh 192.168.2.149";
      cat = "bat";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
    initExtra = ''
      eval "$(atuin init zsh)"
      bindkey "^[[1;3C" forward-word
      bindkey "^[[1;3D" backward-word
    '';
  };
}

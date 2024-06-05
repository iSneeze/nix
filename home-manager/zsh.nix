{lib, config, ...}: {
  programs.zsh = {

    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix";
      in {
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      update = "nix flake update ${flakeDir}";
      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hmswitch = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      ll = "exa -l";
      la = "exa -al";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      format = lib.concatStrings [
        "$line_break"
        "$package"
        "$line_break"
        "$character"
      ];
      scan_timeout = 10;
      character = {
        success_symbol = "➜";
        error_symbol = "➜";
      };
    };
  };
}
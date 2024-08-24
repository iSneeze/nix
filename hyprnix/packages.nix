{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-28.3.3" "electron-27.3.11"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop Apps
    firefox
    discord
    alacritty
    kitty
    godot_4
    blender #-hip
    krita
    inkscape
    steam
    xfce.thunar
    mullvad-vpn
    vlc
    mpv
    imv
    prismlauncher
    libreoffice
    vscodium
    parsec-bin
    audacity
    nextcloud-client
    keepassxc
    obs-studio
    obs-studio-plugins.obs-vaapi
    amf-headers
    spotify
    zeroad
    thunderbird
    filezilla
    kdenlive
    aseprite
    lutris
    logseq
    bottles
    prusa-slicer
    vesktop
    alvr
    #gparted

    # Coding
    rustup
    cargo
    gnumake
    gcc
    nodejs
    (python3.withPackages (ps: with ps; [requests]))
    alejandra # nix formatter
    zulu17

    # CLI
    neovim
    ripgrep
    streamlink
    yt-dlp
    ytarchive
    ffmpeg-full
    fzf
    eza
    atuin
    bat
    btop
    git
    fastfetch
    wget
    file
    tree
    mediainfo
    cava
    zip
    p7zip
    unzip
    usbutils
    ripgrep
    meson
    curl
    zellij
    starship
    protonup
    protontricks
    wine
    winetricks
    dig
    spotify-player
    yazi
    jq
    unar
    ffmpegthumbnailer
    poppler
    zoxide
    cliphist
    bc
    glxinfo
    devenv

    # GUI utils
    lxqt.lxqt-policykit
    rofi-wayland
    wofi-emoji
    mako
    libnotify
    networkmanagerapplet
    ark
    mangohud
    screenkey
    gromit-mpx
    opentabletdriver
    qbittorrent

    # WM stuff
    hyprland
    hyprlock
    hypridle
    hyprpaper
    hyprcursor
    hyprpicker
    #xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    waybar
    swww
    adwaita-icon-theme
    handlr

    # Wayland
    wayland-protocols
    wayland-utils
    xwayland
    xwaylandvideobridge
    wl-clip-persist
    wl-clipboard

    # Sound
    pavucontrol
    pamixer

    # GPU
    amdvlk
    rocm-opencl-icd

    # Screenshotting
    grim
    grimblast
    slurp
    flameshot
    swappy

    # Other
    home-manager
    qt5ct
    libsForQt5.qtstyleplugins
    appimage-run
  ];

  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];

  nixpkgs = {
    overlays = [
      (self: super: {
        waybar = super.waybar.overrideAttrs (oldAttrs: {
          mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true" "-Dmpd=enabled"];
        });
      })
    ];
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];

  # Steam
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override {fonts = ["JetBrainsMono"];})
  ];
}

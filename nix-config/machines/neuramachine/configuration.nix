{ pkgs, ... }:

{
  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  system.stateVersion = 4;

  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  users.users.raza = {
    name = "raza";
    home = "/Users/raza";
  };

  system.defaults = {
    # Disable bottom right hot corner for macOS notes
    dock.wvous-br-corner = 1;
    dock.autohide = true;
    screencapture.location = "~/screenshots";
  };

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [ 
    devenv
    android-tools
    timewarrior # not available in home-manager yet
    nb # command line note taking
    pulumi-bin
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      # cleanup = uninstall;
    };

    global = {
      autoUpdate = true;
    };

    brews = [
    ];

    taps = [
      "nikitabobko/tap"
    ];

    casks = [
      "aerospace"
      "bitwarden"
      "kap"
      "firefox"
      "bruno"
      "1password"
      "android-studio"
      "datagrip"
      "discord"
      "docker"
      "figma"
      "font-fira-code-nerd-font"
      "font-hack-nerd-font"
      "font-jetbrains-mono-nerd-font"
      "font-victor-mono-nerd-font"
      "google-chrome"
      "jdownloader"
      "karabiner-elements"
      "mixed-in-key"
      "moonlight"
      "native-access"
      "obsidian"
      "reactotron"
      "slack"
      "steam"
      "stremio"
      "zed"
      "vlc"
      "wezterm"
      "zoom"
    ];

    masApps = {
      # "Canary Mail" = 1236045954;
    };
  };
}

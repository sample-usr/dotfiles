{ pkgs, home-manager, ... }:

{
  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  system.stateVersion = 4;

  # Replace with "x86_64-darwin" if it's an Intel system
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  # The user that will be running `nix-darwin`
  users.users.raza = {
    name = "raza";
    home = "/Users/raza";
  };

  # Disable bottom right hot corner for macOS notes
  system.defaults.dock.wvous-br-corner = 1;

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [ 
    neofetch
    android-tools
    timewarrior # not available in home-manager yet
    nb # command line note taking
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
    ];

    masApps = {
      # "Canary Mail" = 1236045954;
    };
  };
}

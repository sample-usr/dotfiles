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

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [ 
    neofetch
    android-tools
  ];

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
    # onActivation.cleanup = "uninstall";
    taps = [ ];
    brews = [ ];
    casks = [
      "google-chrome"
    ];
    masApps = {
      "Canary Mail" = 1236045954;
    };
  };
}

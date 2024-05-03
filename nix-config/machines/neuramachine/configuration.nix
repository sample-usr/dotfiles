{ pkgs, home-manager, ... }:

{
  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  system.stateVersion = 4;

  # Replace with "x86_64-darwin" if it's an Intel system
  nixpkgs.hostPlatform = "aarch64-darwin";

  # The user that will be running `nix-darwin`
  users.users.raza = {
    name = "raza";
    home = "/Users/raza";
  };

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [ neofetch ];

  homebrew = {
    enable = true;
    # onActivation.cleanup = "uninstall";
    taps = [ ];
    brews = [ ];
    casks = [ ];
  };
}

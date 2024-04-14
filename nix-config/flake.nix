{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, home-manager }:
    let
      configuration = { pkgs, ... }: {
        services.nix-daemon.enable = true;
        # Necessary for using flakes on this system.
        nix.settings.experimental-features = "nix-command flakes";

        system.configurationRevision = self.rev or self.dirtyRev or null;

        # Used for backwards compatibility. please read the changelog
        # before changing: `darwin-rebuild changelog`.
        system.stateVersion = 4;

        # The platform the configuration will be used on.
        # If you're on an Intel system, replace with "x86_64-darwin"
        nixpkgs.hostPlatform = "aarch64-darwin";

        # Declare the user that will be running `nix-darwin`.
        users.users.raza = { name = "raza";
          home = "/Users/raza";
        };

        programs.fish.enable = true;

        environment.systemPackages = [ pkgs.neofetch pkgs.nixfmt ];

        homebrew = {
          enable = true;
          # onActivation.cleanup = "uninstall";

          taps = [ ];
          brews = [ "cowsay" ];
          casks = [ ];
        };
      };
      homeconfig = { pkgs, ... }: {
        # this is internal compatibility configuration 
        # for home-manager, don't change this!
        home.stateVersion = "24.05";
        # Let home-manager install and manage itself.
        programs.home-manager.enable = true;

        home.packages = with pkgs; [ ];

        home.sessionVariables = { EDITOR = "vim"; };
      };
    in {
      darwinConfigurations."Neuramachine" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.verbose = true;
            home-manager.users.raza = homeconfig;
          }
        ];
      };
    };
}

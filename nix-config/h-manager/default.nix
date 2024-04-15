{ pkgs, config, lib, home-manager, ... }:

let isDarwin = pkgs.stdenv.isDarwin;
in {
  imports = [ ./direnv ];

  config = {
    # This number determines which home-manager release is compatible with your
    # configuration. It avoids any breaking changes when a new home-manager release
    # without backward compatibility.
    #
    # Generally, you should not change this value, even if you update home-manager.
    # If you do change this make sure to read the release notes to make sure everything
    # will work.
    home.stateVersion = "24.05";

    # Let home-manager install and manage itself.
    programs.home-manager.enable = true;

    fonts.fontconfig.enable = true;

    home.packages = with pkgs; [ ];

    home.sessionVariables = { EDITOR = "vim"; };
  };
}

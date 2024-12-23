{
  pkgs,
  config,
  lib,
  home-manager,
  ...
}:

let
  isDarwin = pkgs.stdenv.isDarwin;
in
{
  imports = [
    ./settings/direnv.nix
    ./settings/git.nix
    ./settings/karabiner
    ./settings/starship.nix
    ./settings/nixvim
  ];

  config = {
    # This number determines which home-manager release is compatible with your
    # configuration. It avoids any breaking changes when a new home-manager release
    # without backward compatibility.
    #
    # Generally, you should not change this value, even if you update home-manager.
    # If you do change this make sure to read the release notes to make sure everything
    # will work.
    home.stateVersion = "24.11";

    # programs without any extensive configuration
    programs = {
      home-manager.enable = true;
      eza.enable = true;
      fd.enable = true;
      ripgrep.enable = true;
      fzf.enable = true;
      zoxide.enable = true;
      gh.enable = true;
      gh-dash.enable = true;
      bat.enable = true;
    };

    fonts.fontconfig.enable = true;

    home.packages = with pkgs; [
      ansible
      ansible-lint
    ];

    home.sessionVariables = {
      EDITOR = "nvim";
    };
  };
}

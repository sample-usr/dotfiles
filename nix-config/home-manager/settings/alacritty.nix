{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = { 
          family = "JetBrainsMono Nerd Font Mono"; 
          style = "Regular";
        };
        size = 14;
      };
    };
  };
}

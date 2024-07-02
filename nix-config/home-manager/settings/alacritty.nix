{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = { 
          family = "BerkeleyMono Nerd Font Mono"; 
          style = "Regular";
        };
        size = 15;
      };
    };
  };
}

{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "rebebop";
    userEmail = "1941785+rebebop@users.noreply.github.com";

    extraConfig = {
      pull = {
        rebase = true;
      };
    };

    aliases = {
      co = "checkout";
      cob = "checkout -b";
      st = "status -sb";
      ll = "log --oneline";
      aa = "add .";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        dark = true;
        side-by-side = true;
        theme = "gruvbox-dark";
      };
    };
  };
}

{ ... }: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      character = {
        success_symbol = "[λ](bold green) ";
        error_symbol = "[λ](bold red) ";
      };
      azure = {
        disabled = true;
      };
      gcloud = {
        disabled = true;
      };
      git_branch = {
        ignore_branches = ["master" "main"];
      };
    };
  };
}

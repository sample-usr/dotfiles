{
  programs.nixvim = {
    plugins.fzf-lua = {
      enable = true;

      keymaps = {
        "<leader>ff" = {
          action = "git_files";
          options = {
            desc = "Fzf-Lua Git Files";
            silent = true;
          };
          settings = {
            previewers = "bat";
            winopts = {
              height = 0.5;
            };
          };
        };
        "<leader>sg" = "live_grep";
      };
    };
  };
}

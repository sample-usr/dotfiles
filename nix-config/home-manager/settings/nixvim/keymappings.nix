{ ... }:
{
  programs.nixvim = {
    keymaps = [
      # Remap escape
      {
        key = "jk";
        action = "<Esc>";
        mode = [ "i" ];
      }

      # split navigation
      {
        key = "<C-h>";
        action = "<C-w>h";
        mode = [ "n" ];
      }
      {
        key = "<C-j>";
        action = "<C-w>j";
        mode = [ "n" ];
      }
      {
        key = "<C-k>";
        action = "<C-w>k";
        mode = [ "n" ];
      }
      {
        key = "<C-l>";
        action = "<C-w>l";
        mode = [ "n" ];
      }
      {
        key = "ss";
        action = ":split<Return>";
        mode = [ "n" ];
      }
      {
        key = "sv";
        action = ":vsplit<Return>";
        mode = [ "n" ];
      }

      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "LazyGit (root dir)";
        };
      }
    ];
  };
}

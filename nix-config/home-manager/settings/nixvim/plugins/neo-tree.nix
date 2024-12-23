{ lib, pkgs, ... }:
{
  programs.nixvim = {
    plugins.neo-tree = {
      enable = true;
      sources = [
        "filesystem"
        "buffers"
        "git_status"
        "document_symbols"
      ];
      popupBorderStyle = "rounded";
    };
    keymaps = [
       {
         mode = "n";
         key = "<leader>e";
         action = "<cmd>Neotree toggle<cr>";
         options = {
           silent = true;
           desc = "Explorer NeoTree (root dir)";
         };
       }
     ];
  };
}

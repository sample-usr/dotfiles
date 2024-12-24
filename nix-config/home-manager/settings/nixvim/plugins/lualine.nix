{ ... }:
{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;

      settings = {
        options = {
          always_divide_middle = true;
          ignore_focus = [ "neo-tree" ];
          globalstatus = true; # have a single statusline at bottom of neovim instead of one for every window
          section_separators = {
            left = "";
            right = "";
          };
        };
        extensions = [ "fzf" ];
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [ "branch" ];
          lualine_y = [
            "progress"
            {
              separator = "";
            }
            "location"
            {
              padding = {
                left = 0;
                right = 1;
              };
            }
          ];
        };
      };
    };
  };
}

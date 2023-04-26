-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

require("nvim-tree").setup({
  -- disable window_picker for explorer to work well with window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

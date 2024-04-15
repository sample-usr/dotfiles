return {
  {
    "brenoprata10/nvim-highlight-colors",
    lazy = false,
    init = function()
      require("nvim-highlight-colors").turnOn()
    end,
  },
  {
    dir = "~/code/rakis.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rakis",
    },
  },
}

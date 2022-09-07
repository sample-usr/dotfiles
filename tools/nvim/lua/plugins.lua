vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn

-- Auto install packer.nvim if it does not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end
vim.api.nvim_command("packadd packer.nvim")

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup({
  function(use)
    -- Packer can manage itself
    use({ "wbthomason/packer.nvim" })

    -- LSP
    use({ "neovim/nvim-lspconfig", config = get_setup("lsp") })
    use({ "onsails/lspkind-nvim", requires = { { "famiu/bufdelete.nvim" } } })
    use({ "williamboman/nvim-lsp-installer", config = get_setup("lsp-installer") })
   
    -- Autocomplete
    use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/vim-vsnip" },
        { "hrsh7th/cmp-vsnip" },
        { "hrsh7th/vim-vsnip-integ" },
        { "hrsh7th/cmp-calc" },
        { "hrsh7th/cmp-emoji" },
      },
      config = get_setup("cmp"),
    })
    use({
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      requires = {
        { "nvim-lua/popup.nvim" },
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      },
      config = get_setup("telescope"),
    })

    -- Syntax
    use({
      "nvim-treesitter/nvim-treesitter",
      config = get_setup("treesitter"),
      run = ":TSUpdate",
    })
    use({ "nvim-treesitter/nvim-treesitter-textobjects" })
    use({ "slim-template/vim-slim" })
    use({ "ggandor/lightspeed.nvim" })
    use({ "tpope/vim-rails" })

    -- Explorer
    use({ "kyazdani42/nvim-tree.lua", config = get_setup("tree") })
    use({ "kyazdani42/nvim-web-devicons" })

    -- General
    use({ "nathom/filetype.nvim" })
    use({ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" })
    use({
      "numToStr/Comment.nvim",
      opt = true,
      keys = { "gc", "gcc" },
      config = get_setup("comment"),
    })
    use({
      "nvim-lualine/lualine.nvim",
      config = get_setup("lualine"),
      event = "VimEnter",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
      "lewis6991/gitsigns.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      event = "BufReadPre",
      config = get_setup("gitsigns"),
    })
    use({ "tpope/vim-surround" })
    use({ "tpope/vim-endwise" })
    use({ "lmburns/kimbox", config = [[require("kimbox").load()]] })

    if packer_bootstrap then
      require("packer").sync()
    end
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
})

-- auto install packer.nvim if it does not exists
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- whenever plugins-setup file is changed
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- colorscheme
	use("bluz71/vim-nightfly-colors")

	-- tmux & window navigation
	use("christoomey/vim-tmux-navigator")

	-- general
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("nvim-tree/nvim-web-devicons")
	use("numToStr/Comment.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- lsp
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	if packer_bootstrap then
		require("packer").sync()
	end
end)

-------------------------------------------
-- return require("packer").startup({
--   function(use)
--
--     -- LSP
--     use({ "neovim/nvim-lspconfig", config = get_setup("lsp") })
--     use({ "onsails/lspkind-nvim", requires = { { "famiu/bufdelete.nvim" } } })
--     use({ "williamboman/nvim-lsp-installer", config = get_setup("lsp-installer") })
--
--     -- Autocomplete
--     use({
--       "hrsh7th/nvim-cmp",
--       requires = {
--         { "hrsh7th/cmp-nvim-lsp" },
--         { "hrsh7th/cmp-nvim-lua" },
--         { "hrsh7th/cmp-buffer" },
--         { "hrsh7th/cmp-path" },
--         { "hrsh7th/cmp-cmdline" },
--         { "hrsh7th/vim-vsnip" },
--         { "hrsh7th/cmp-vsnip" },
--         { "hrsh7th/vim-vsnip-integ" },
--         { "hrsh7th/cmp-calc" },
--         { "hrsh7th/cmp-emoji" },
--       },
--       config = get_setup("cmp"),
--     })
--     use({
--       "nvim-telescope/telescope.nvim",
--       module = "telescope",
--       cmd = "Telescope",
--       requires = {
--         { "nvim-lua/popup.nvim" },
--         { "nvim-lua/plenary.nvim" },
--         { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
--       },
--       config = get_setup("telescope"),
--     })
--
--     -- Syntax
--     use({
--       "nvim-treesitter/nvim-treesitter",
--       config = get_setup("treesitter"),
--       run = ":TSUpdate",
--     })
--     use({ "nvim-treesitter/nvim-treesitter-textobjects" })
--     use({ "slim-template/vim-slim" })
--     use({ "ggandor/lightspeed.nvim" })
--     use({ "tpope/vim-rails" })
--
--     -- General
--     use({ "nathom/filetype.nvim" })
--     use({ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" })
--     use({
--       "lewis6991/gitsigns.nvim",
--       requires = { "nvim-lua/plenary.nvim" },
--       event = "BufReadPre",
--       config = get_setup("gitsigns"),
--     })
--     use({ "tpope/vim-endwise" })
--     use({ "lmburns/kimbox", config = [[require("kimbox").load()]] })
--
--     if packer_bootstrap then
--       require("packer").sync()
--     end
--   end,
--   config = {
--     display = {
--       open_fn = require("packer.util").float,
--     },
--     profile = {
--       enable = true,
--       threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
--     },
--   },
-- })

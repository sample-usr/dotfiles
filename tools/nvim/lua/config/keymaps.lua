-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- vim.cmd("highlight NeoTreeGitUntracked gui=none")
-- vim.cmd([[
-- highlight NeoTreeGitConflict gui=bold
-- highlight NeoTreeGitUntracked gui=none
-- highlight NeoTreeRootName gui=bold
-- ]])

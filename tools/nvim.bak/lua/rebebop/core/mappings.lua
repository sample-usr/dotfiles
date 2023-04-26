local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

-- Map jk to exit
map("i", "jk", "<ESC>")

-- Nvim Tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>u", ":NvimTreeFindFile<CR>", { silent = true })

-- Easier split mappings
map("n", "<Leader><Down>", "<C-W><C-J>", { silent = true })
map("n", "<Leader><Up>", "<C-W><C-K>", { silent = true })
map("n", "<Leader><Right>", "<C-W><C-L>", { silent = true })
map("n", "<Leader><Left>", "<C-W><C-H>", { silent = true })
map("n", "<Leader>;", "<C-W>R", { silent = true })
map("n", "<Leader>[", "<C-W>_", { silent = true })
map("n", "<Leader>]", "<C-W>|", { silent = true })
map("n", "<Leader>=", "<C-W>=", { silent = true })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
--map("n", "<leader>h", '<cmd>lua require("telescope.builtin").git_bcommits()<cr>')
--map("n", "<leader>f", '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>')
--map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
--map("n", "<leader>i", '<cmd>lua require("telescope.builtin").git_status()<cr>')

-- LspSaga
-- map("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>")
-- map("n", "<leader>ch", "<cmd>Lspsaga hover_doc<cr>")
--map("n", "<leader>cs", '<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>')
-- map("n", "<leader>cd", '<cmd>lua require("telescope.builtin").diagnostics()<cr>')
-- map("n", "<leader>ch", '<cmd>lua require("telescope.builtin").diagnostics()<cr>')
--map("n", "<leader>cr", '<cmd>lua require("telescope.builtin").lsp_references()<cr>')
--map("n", "<leader>cf", '<cmd>lua require("telescope.builtin").lsp_definitions()<cr>')
--map("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("n", "<leader>cn", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("v", "<leader>cn", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("n", "<leader>ci", "<cmd>lua vim.diagnostic.open_float()<cr>")

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

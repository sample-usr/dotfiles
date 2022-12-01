local opt = vim.opt -- to set options

opt.tabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- Size of an indent
opt.expandtab = true -- Use spaces instead of tabs
opt.autoindent = true -- Copy indent from current line when starting a new one
opt.wrap = false
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.completeopt = "menu,menuone,noselect"
opt.cursorline = true
-- opt.cursorcolumn = true
-- opt.encoding = "utf-8" -- Set default encoding to UTF-8
-- opt.foldenable = false
-- opt.foldmethod = "indent"
-- opt.formatoptions = "l"
-- opt.hidden = true -- Enable background buffers
-- opt.hlsearch = true -- Highlight found searches
opt.ignorecase = true -- Ignore case
-- opt.inccommand = "split" -- Get a preview of replacements
-- opt.incsearch = true -- Shows the match while typing
-- opt.joinspaces = false -- No double spaces with join
-- vim.o.lazyredraw = true
-- opt.linebreak = true -- Stop words being broken on wrap
opt.number = true -- Show line numbers
-- opt.list = true -- Show some invisible characters
-- opt.listchars = { tab = " ", trail = "·" }
opt.relativenumber = true
-- opt.scrolloff = 4 -- Lines of context
-- opt.showmode = false -- Don't display mode
-- opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- always show signcolumns
opt.smartcase = true -- Do not ignore case with capitals
-- opt.smartindent = true -- Insert indents automatically
-- opt.spelllang = { "en_gb" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.
opt.background = "dark"
opt.iskeyword:append("-") -- consider string-string as whole word
-- opt.title = true -- Allows neovom to send the Terminal details of the current window, instead of just getting 'v'
-- vim.o.whichwrap = vim.o.whichwrap .. "<,>" -- Wrap movement between lines in edit mode with arrows
-- -- opt.cc = "80"
-- opt.mouse = "a"
-- -- opt.guicursor =
-- --   "n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20"
-- vim.cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = true}") -- disabled in visual mode
-- -- Give me some fenced codeblock goodness
-- vim.g.markdown_fenced_languages = { "html", "javascript", "typescript", "css", "scss", "lua", "vim" }
-- vim.cmd([[colorscheme kimbox]]) -- Put your favorite colorscheme here
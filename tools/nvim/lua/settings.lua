-- the utils should be it's own module but right now the package.path is giving some errors of module not found
-- maybe it would be solved if I used only init.lua
local utils = { }

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd
local indent = 2

cmd 'syntax enable'
cmd 'filetype plugin indent on'

-- global scoped options
utils.opt('o', 'hidden', true)
utils.opt('o', 'smarttab', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'scrolloff', 8)
utils.opt('o', 'sidescrolloff', 5)
utils.opt('o', 'mouse', 'r')
utils.opt('o', 'undolevels', 100)
utils.opt('o', 'clipboard', 'unnamed')
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'hidden', true)
utils.opt('o', 'incsearch', true)
utils.opt('o', 'showcmd', true)

-- buffer scoped options
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'softtabstop', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
--utils.opt('b', 'nomodeline', true)
--utils.opt('b', 'noswapfile', true)


-- window scoped options
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
--utils.opt('w', 'nowrap', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true)

--set conceallevel=1							
--set noerrorbells				
--set backspace=indent,eol,start      					
--set nocompatible
--set noautoindent
--set nocindent
--set lazyredraw
--set laststatus=2
--set noshowmode
--set splitright
--set smartcase
--set nobackup




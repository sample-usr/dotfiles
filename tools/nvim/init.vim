call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'glepnir/lspsaga.nvim'
Plug 'ruanyl/vim-gh-line'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'

" editing
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-gitgutter'
Plug 'windwp/nvim-autopairs'
Plug 'preservim/nerdcommenter'
Plug 'peitalin/vim-jsx-typescript'
Plug 'justinmk/vim-sneak'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/vim-easy-align'

" themes
"Plug 'srcery-colors/srcery-vim'
"Plug 'morhetz/gruvbox'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'whatyouhide/vim-gotham'
Plug 'fcpg/vim-fahrenheit'

call plug#end()


source ~/.dotfiles/tools/nvim/general.vim
"source ~/.dotfiles/tools/nvim/sets.vim
source ~/.dotfiles/tools/nvim/plugins.vim

luafile ~/.dotfiles/tools/nvim/lua/settings.lua
luafile ~/.dotfiles/tools/nvim/lua/lsp/lsp-config.lua
luafile ~/.dotfiles/tools/nvim/lua/plugins/config-nvim-cmp.lua
luafile ~/.dotfiles/tools/nvim/lua/plugins/config-lspsaga.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-lualine/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-bufferline/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-autopairs/init.lua

"luafile ~/.dotfiles/tools/nvim/ruby-ls.lua

" use silent so nvim does not choke if it cannot find the coloscheme
"set background=light
let g:tokyonight_style = "night"
silent! colorscheme gotham

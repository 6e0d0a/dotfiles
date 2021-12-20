" === Personal
set number
set relativenumber
set showcmd
set showmatch
set linebreak
set splitright
set splitbelow
set hlsearch!

let mapleader = ' '

nnoremap <F3> :set hlsearch!<CR>

" === Plugins
call plug#begin('~/.config/nvim/plugged')
" Temas
Plug 'navarasu/onedark.nvim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
" Lenguajes
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Funciones
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
" Movimiento
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
call plug#end()

" === Cofiguración de configs
source ~/.config/nvim/configs/themes.vim
source ~/.config/nvim/configs/coc.vim
source ~/.config/nvim/configs/nerdtree.vim
source ~/.config/nvim/configs/easymotion.vim

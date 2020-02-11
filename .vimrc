set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on


set number
set linebreak
set showbreak=+
set textwidth=100
set showmatch

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set cursorline

set ruler

set undolevels=1000
set backspace=indent,eol,start

syntax on 
colorscheme dracula

filetype plugin indent on

map <C-\> :NERDTreeToggle<CR>


" Airline extension
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline#extensions#tabline#formatter = 'unique_tail'

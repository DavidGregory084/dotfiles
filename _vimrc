set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
set guioptions=
set noerrorbells visualbell t_vb=

scriptencoding utf-8
set encoding=utf-8
set history=1000
set undolevels=1000
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set copyindent
set nocindent
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set nrformats=
set list
set listchars=trail:·,precedes:«,extends:»

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <esc> :nohlsearch<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>

autocmd GUIEnter * set visualbell t_vb=
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeShowHidden=1
let g:scala_sort_across_groups=1
let g:airline_powerline_fonts=1
let g:js_indent_typescript = 1
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

cd $HOME/jhc

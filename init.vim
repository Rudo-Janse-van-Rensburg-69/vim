" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" for vundle


syntax on

filetype off    "required for vundle
set t_Co=256
if $TERM !=? 'xterm-256color'
        set termguicolors
    endif

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"



set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" Vundle
call vundle#begin()
    Plugin 'hashivim/vim-terraform'

call vundle#end()
filetype plugin indent on       " required
" vim-plug
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'
    Plug 'zchee/deoplete-jedi' "code complete for python

    " Git
    Plug 'airblade/vim-gitgutter'

    " Color Schemes
    Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

set nocompatible

set autoread
set autoindent
set cindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set expandtab
set hlsearch
set incsearch
set mouse=a
set number
set ruler
set shiftwidth=2
set shortmess=aIOoTt
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set tabstop=8
set visualbell
set nowrap

syntax on
filetype plugin indent on

if has("gui_running")
  colorscheme torte
  set columns=132
  set guifont=ProggyTinySZ
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

map Q gq


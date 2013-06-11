set nocompatible

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/tmp
set cindent
set directory=~/.vim/tmp
set expandtab
set hlsearch
set incsearch
set iskeyword+=:
set mouse=a
set number
set ruler
set shellslash
set shiftwidth=4
set shortmess=aIOoTt
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set spelllang=en_us
set t_Co=256
set tabstop=8
set visualbell
set nowrap

syntax on
filetype plugin indent on

let c_space_errors = 1
let g:tex_flavor='latex'
let viminfopath=$VIM."/.viminfo"

if has("gui_running")
  colorscheme solarized
  set columns=132
  set guifont=ProggyCleanSZCP:h8:cANSI
  set guioptions=acegmrT
  set lines=60
  set mousefocus
endif

map Q gq
map <C-Tab>   :bnext<CR>
map <S-C-Tab> :bprevious<CR>
map <F4>      :bd<CR>
map <F5>      :set wrap!<CR>
map <F6>      :set list!<CR>
map <F7>      :set hls!<CR>
map <F8>      :set paste!<CR>
map <F9>      :set spell!<CR>
map <F11>     gqap
map <silent> <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

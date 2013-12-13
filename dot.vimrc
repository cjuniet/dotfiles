set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=$HOME/.vim/tmp
set cindent
set directory=$HOME/.vim/tmp
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hlsearch
set incsearch
set laststatus=2
set linebreak
set listchars=eol:¶,tab:¬\ ,trail:·,extends:»,precedes:«,nbsp:·
set mouse=a
set nrformats-=octal
set number
set ruler
set shellslash
set shiftround
set shiftwidth=2
set shortmess=aIOoTt
set showbreak=»»»
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=2
set spelllang=en_us
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set t_Co=256
set tabstop=8
set termencoding=utf8
set visualbell
set wildmenu
set nowrap

syntax on
if has("gui_running") || &term =~ "rxvt"
  let g:solarized_menu=0
  let g:solarized_visibility="high"
  colorscheme solarized
endif

filetype plugin indent on
let c_space_errors=1
let java_space_errors=1

if has("gui_running")
  set columns=132
  set guifont=Terminus
  set guiheadroom=0
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

nmap <leader>g :Gstatus<CR>
nmap <leader>h :set hls!<CR>
nmap <leader>l :set list!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>w :set wrap!<CR>

map Q gqip
map <C-Tab>   :bnext<CR>
map <S-C-Tab> :bprevious<CR>
map <F4>      :MBEbd<CR>
map <F11>     :TagbarToggle<CR>
map <silent> <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


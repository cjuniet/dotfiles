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
set hlsearch
set incsearch
set iskeyword+=:
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
set visualbell
set wildmenu
set nowrap

let c_space_errors=1
let java_space_errors=1
let g:solarized_menu=0
let g:solarized_visibility="high"
let g:unite_data_directory=&backupdir."/unite"
let g:vimfiler_data_directory=&backupdir."/vimfiler"

syntax on
colorscheme solarized
filetype plugin indent on

if has("gui_running")
  set columns=132
  set guifont=ProggyCleanTTSZ\ 12
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

map Q gqip
map <C-Tab>   :bnext<CR>
map <S-C-Tab> :bprevious<CR>
map <F4>      :bd<CR>
map <F10>     :VimFilerExplorer<CR>
map <F11>     :TagbarToggle<CR>
map <silent> <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nmap <leader>g :Gstatus<CR>
nmap <leader>h :set hls!<CR>
nmap <leader>l :set list!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>w :set wrap!<CR>

set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=$HOME/.vim/tmp
set cindent
set cinoptions=l1,g0,(0,Ws
set confirm
set directory=$HOME/.vim/tmp
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hidden
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
set showmode
set smartcase
set smartindent
set smarttab
set softtabstop=2
set statusline=2
set spelllang=en_us
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set t_Co=256
set tabstop=8
set termencoding=utf8
set visualbell
set wildmenu
set nowrap

syntax on
filetype plugin indent on
autocmd VimEnter * if !argc() | NERDTree | endif

let c_space_errors=1
let java_space_errors=1
let g:miniBufExplCycleArround=1
let g:miniBufExplHideWhenDiff = 1
let g:miniBufExplShowBufNumbers=0
let g:miniBufExplUseSingleClick=1

if &term =~ "screen"
  colorscheme torte
else
  colorscheme solarized
endif

if has("gui_running")
  set columns=132
  set guifont=Terminus
  set guiheadroom=0
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

nmap Q gqap
vmap Q gq

nmap <leader>g :Gstatus<CR>
nmap <leader>h :set hls!<CR>
nmap <leader>l :set list!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>w :set wrap!<CR>

noremap <C-Tab>   :MBEbn<CR>
noremap <S-C-Tab> :MBEbp<CR>

map <F1>      :NERDTreeToggle<CR>
map <F2>      :TagbarToggle<CR>
map <F3>      :MBEToggle<CR>
map <F4>      :MBEbd<CR>
map <F5>      :cprevious<CR>zz
map <F6>      :cnext<CR>zz
map <silent> <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

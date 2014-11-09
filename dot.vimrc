set nocompatible
filetype plugin indent on
syntax on

call plug#begin()
Plug 'cjuniet/vim-colors-solarized'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
call plug#end()

set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=$HOME/.vim/tmp
set cindent
set cinoptions=l1,g0,(0,Ws
set complete-=i
set confirm
set directory=$HOME/.vim/tmp
set display+=lastline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set listchars=eol:¶,tab:¬\ ,trail:·,extends:»,precedes:«,nbsp:·
set mouse=a
set nrformats-=octal
set number
set ruler
set shell=/bin/sh
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
set spelllang=en_us
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set t_Co=256
set tabstop=8
set termencoding=utf-8
set visualbell
set wildmenu
set nowrap

if &term =~ "rxvt"
  colorscheme solarized
else
  colorscheme jellybeans
endif

if has("gui_running")
  set columns=132
  set guifont=Terminus
  set guiheadroom=0
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap Q gqap
vmap Q gq
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nmap <silent> <C-K> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>l :set list!<CR>
nmap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>p :set paste!<CR>
nmap <silent> <leader>r :set relativenumber!<CR>
nmap <silent> <leader>w :set wrap!<CR>

let c_space_errors = 1
let java_space_errors = 1

let g:go_bin_path = expand("$HOME/.vim/vim-go/")
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:syntastic_error_symbol = "⇒"
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_warning_symbol = "→"
let g:tagbar_compact = 1

set nocompatible
filetype plugin indent on
syntax on

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'cjuniet/clang-format.vim'
Plug 'cjuniet/vim-colors-solarized'
Plug 'derekwyatt/vim-scala'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
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
set shellslash
set shiftround
set shiftwidth=2
set shortmess=aIOoTt
set showbreak=»»»
set showcmd
set showmatch
set noshowmode
set smartcase
set smartindent
set smarttab
set softtabstop=2
set spelllang=en_us
set t_Co=256
set tabstop=8
set termencoding=utf-8
set visualbell
set wildignore=*.o,*.obj
set wildmenu
set nowrap

if has("gui_running")
  colorscheme jellybeans
  set columns=132
  set guifont=Terminus
  set guiheadroom=0
  set guioptions=aceg
  set lines=60
  set mousefocus
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

command! Q qall
command! W wall

nmap n nzz
nmap N Nzz
nmap Q gqap
vmap Q gq

nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nmap <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>g :Gstatus<CR>
nmap <silent> <leader>l :set list!<CR>
nmap <silent> <leader>k :bdelete<CR>
nmap <silent> <leader>m :set guioptions+=m<CR>
nmap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>p :set paste!<CR>
nmap <silent> <leader>r :set relativenumber!<CR>
nmap <silent> <leader>w :set wrap!<CR>
nmap <silent> <F11>     :cwindow<CR>
nmap <silent> <F12>     :make<CR>

let c_space_errors = 1
let java_space_errors = 1
let g:airline_powerline_fonts = 1
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "ϟ"
let g:tagbar_compact = 1

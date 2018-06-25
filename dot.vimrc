set nocompatible
filetype plugin indent on
syntax on

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'bling/vim-airline'
Plug 'cjuniet/clang-format.vim'
Plug 'cjuniet/vim-colors-solarized'
Plug 'elixir-editors/vim-elixir'
Plug 'godlygeek/tabular'
Plug 'jceb/vim-orgmode'
Plug 'jeaye/color_coded'
Plug 'jtratner/vim-flavored-markdown'
Plug 'kien/ctrlp.vim'
Plug 'lsdr/monokai'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-mix-format'
Plug 'nanotech/jellybeans.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'slashmili/alchemist.vim'
Plug 'tbastos/vim-lua'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'udalov/kotlin-vim'
Plug 'valloric/youcompleteme'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
call plug#end()

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
set formatoptions+=j
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

if !has("gui_running")
  colorscheme jellybeans
  let g:color_coded_enabled = 0
else
  colorscheme monokai
  set columns=300
  set guifont=Anonymice\ Nerd\ Font\ Complete\ Mono:h16
  set guiheadroom=0
  set guioptions=aceg
  set lines=100
  set mousefocus
endif

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

command! Q qall
command! W wall

nmap n nzz
nmap N Nzz
nmap Q gqap
vmap Q gq
nmap <silent> <leader>b :make<CR>
nmap <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>g :Gstatus<CR>
nmap <silent> <leader>k :bdelete<CR>
nmap <silent> <leader>t :TagbarToggle<CR>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nnoremap <silent> <C-K> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

let c_space_errors = 1
let java_space_errors = 1

let g:airline_powerline_fonts = 1
let g:clang_format_style = 'file'
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:rainbow_active = 1
let g:tagbar_compact = 1
let g:vim_markdown_folding_disabled = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_error_symbol = "✗→"
let g:ycm_extra_conf_globlist = [ '~/*' ]
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_warning_symbol = "△→"

let s:rainbow_conf = {
\ 'guifgs': ['darkorange3', 'seagreen3', 'deepskyblue', 'darkorchid3', 'forestgreen', 'lightblue', 'hotpink', 'mistyrose1'],
\ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\ 'operators': '_[\,\+\*\-\&\^\!\.\:\<\>\;\=\|\?]_',
\ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\ 'separately': { '*': {} }
\}

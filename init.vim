set confirm
set expandtab
set hidden
set ignorecase
set linebreak
set listchars=eol:¶,tab:¬\ ,trail:·,extends:»,precedes:«,nbsp:·
set mouse=a
set number
set shiftround
set shiftwidth=2
set shortmess=aoOtTIF
set showbreak=»»»
set showmatch
set smartcase
set smartindent
set softtabstop=2
set tabstop=8
set termencoding=utf-8
set termguicolors
set visualbell
set wildignore=*.o,*.obj
set nowrap

colorscheme jellybeans

command! Q qall
command! W wall

nmap n nzz
nmap N Nzz
nnoremap Q <Nop>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

let g:netrw_liststyle = 3

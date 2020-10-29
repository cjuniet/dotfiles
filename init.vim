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
set shortmess=aoOtTIcF
set showbreak=»»»
set showmatch
set noshowmode
set signcolumn=number
set smartcase
set smartindent
set softtabstop=2
set tabstop=8
set termencoding=utf-8
set termguicolors
set updatetime=1000
set visualbell
set wildignore=*.beam,*.class,*.o
set nowrap

" custom options
colorscheme jellybeans
let g:airline_powerline_fonts = 1
let g:mix_format_on_save = 1
let g:rainbow_active = 1

" custom commands
command! Q qall
command! W wall
nmap n nzz
nmap N Nzz
nnoremap Q <Nop>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nmap <unique> <leader>p <Plug>(PickerEdit)

" coc
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-type-definition)

" minpac
function! PackInit() abort
  packadd minpac
  call minpac#init()
  call minpac#add("k-takata/minpac", {'type': 'opt'})
  call minpac#add("elixir-editors/vim-elixir")
  call minpac#add("jremmen/vim-ripgrep")
  call minpac#add("luochen1990/rainbow")
  call minpac#add("mhinz/vim-mix-format")
  call minpac#add("nanotech/jellybeans.vim")
  call minpac#add("neoclide/coc.nvim", {'branch': 'release'})
  call minpac#add("tpope/vim-endwise")
  call minpac#add("tpope/vim-fugitive")
  call minpac#add("tpope/vim-sleuth")
  call minpac#add("tpope/vim-unimpaired")
  call minpac#add("tpope/vim-vinegar")
  call minpac#add("udalov/kotlin-vim")
  call minpac#add("vim-airline/vim-airline")
  call minpac#add("vim-airline/vim-airline-themes")
  call minpac#add("vim-erlang/vim-erlang-runtime")
  call minpac#add("vim-test/vim-test")
  call minpac#add('srstevenson/vim-picker')
endfunction
command! Pack call PackInit() | call minpac#update() | call minpac#clean()


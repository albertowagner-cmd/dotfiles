call plug#begin()
Plug 'preservim/NERDTree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Need to install LSP in your OS
call plug#end()

syntax on
filetype on
set expandtab
set bs=2
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smartcase
set ignorecase
"set modeline
set nocompatible
"set encoding=utf-8
"set history=700
set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search
"set t_Co=256
set termguicolors
set background=dark
"set tabpagemax=1000
"set ruler
"set nojoinspaces
"set shiftround
set relativenumber

colorscheme sitruuna

"set nolbr
"set tw=0

let mapleader = " "
nmap <leader>e :NERDTreeToggle<CR>

filetype plugin on

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-@> coc#refresh()

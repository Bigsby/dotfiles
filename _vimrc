set nocompatible

" redering
set ttyfast
set lazyredraw
set updatetime=300

" theming
syntax on
set termguicolors
set encoding=utf-8
set background=dark
colorscheme molokai
let g:airline_theme='tomorrow'
set hlsearch
set cursorline

" not bells
set noerrorbells
set vb t_vb=

" not backup files
set nobackup
set nowritebackup
set noswapfile

" Show line numbers
set number
set relativenumber
set ruler

" use system clipboard
set clipboard=unnamed

" Indentation
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

" Key bindings
execute "set <M-j>=\ej"
let mapleader = ' '
map j gj
map k gk

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

nnoremap <m-h> :vertical resize -2<cr>
nnoremap <m-l> :vertical resize +2<cr>
nnoremap <m-k> :resize -2<cr>
nnoremap <m-j> :resize +2<cr>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>w :Windows<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>e :e<space>
nnoremap <leader>s :split<space>
nnoremap <leader>v :vsplit<space>
nnoremap <leader>h :nohl<cr>
nnoremap <leader>t :tabnew<space>
nnoremap <tab> :tabnext<cr>
nnoremap <s-tab> :tabprevious<cr>

inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

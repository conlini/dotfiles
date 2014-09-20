" My vimrc
" Begin basic settins

autocmd! bufwritepost .vimrc source %
filetype off
filetype plugin indent on
syntax on
filetype plugin on

set nocompatible
set backspace=eol,indent,start
set history=700
set undolevels=700

"key maps
let mapleader = ","
nnoremap <C-Z> :w!<CR> 
inoremap <C-Z> <C-C>:update<CR>
vnoremap <C-Z> <C-C>:update<CR>
noremap <Leader>e :q!<CR>
"block move indent
vnoremap < <gv
vnoremap > >gv
"Bind nohl
nnoremap <C-H> :nohl<CR>
vnoremap <C-H> :nohl<CR>
inoremap <C-H> :nohl<CR>
"Map movement across tabs and splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <silent><Leader>m :tabnext<CR>
map <silent><Leader>n :tabprevious<CR>
vnoremap <Leader>s :sort<CR>
nnoremap <Leader>q :NERDTreeToggle<CR>


set number
set ruler
set hlsearch
set incsearch
set smartcase
set ignorecase
set tabstop=4
set softtabstop=4
set shiftround
set expandtab
set autoindent
set smartindent
set shiftwidth=4
"set bs=2
set tw=80
set nowrap "dont wrap on load
set fo-=t "dont wrap text when typing
set colorcolumn=81
highlight ColorColumn ctermbg=233



"make clipboard standard
set clipboard=unnamed

set pastetoggle=<F2> "toggle on/off of paste feature

set mouse=a "enable mouse

set nobackup
set nowritebackup
set noswapfile
" End basic settings

"pathogen
execute pathogen#infect()  

let delimitMate_expand_cr = 1 "DelimitMate settings
" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" " Ignore these directories
set wildignore+=*/build/**
" " disable caching
let g:ctrlp_use_caching=0

"set color theme solarized
set background=dark
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized


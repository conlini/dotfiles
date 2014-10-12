" My vimrc
" Begin basic settins

autocmd! bufwritepost .vimrc source %
"pathogen
execute pathogen#infect()  

filetype off
filetype plugin indent on
syntax on
filetype plugin on

"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

inoremap <c-space> <C-x><C-o>
inoremap <c-@> <C-x><C-o>

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
set tw=100
set nowrap "dont wrap on load
"set fo-=t "dont wrap text when typing
set colorcolumn=100
highlight ColorColumn ctermbg=233



"make clipboard standard
set clipboard=unnamed

set pastetoggle=<F2> "toggle on/off of paste feature

set mouse=a "enable mouse

set nobackup
set nowritebackup
set noswapfile
" End basic settings



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
colorscheme desert

"powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

"java settings
autocmd FileType java set completeopt-=preview
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
autocmd Filetype java setlocal omnifunc=javacomplete#Complete

call javacomplete#SetSourcePath('$HOME/dev/src/*')
call javacomplete#SetClassPath('$HOME/.m2/repository/*')

set foldmethod=syntax
set foldenable

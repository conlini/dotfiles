
autocmd! bufwritepost .vimrc source %
"pathogen
execute pathogen#infect()  
execute pathogen#helptags()

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
set tw=79
set nowrap "dont wrap on load
set fo+=t "dont wrap text when typing
execute "set colorcolumn=" . join(range(81,335), ',')
" set colorcolumn=79




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
let g:ctrlp_regexp = 1 "enable regex search
let g:ctrlp_open_new_file = 't'
" " Ignore these directories
set wildignore+=*/build/**
" " disable caching
let g:ctrlp_use_caching=0

"set color theme solarized
" set background=dark
" let g:solarized_termcolors = 256  " New line!!
" colorscheme desert


" set foldmethod=syntax
set  nofoldenable

" pymode settings
let g:pymode_rope_lookup_project = 1
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_goto_definition_bind = '<c-g>'
let g:pymode_options_colorcolumn = 0


set nocompatible

" Pathogen stuff
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"
" from GOLANG vimrc stuff
"
filetype plugin indent on
syntax on

set number

set tabstop=2  
set autoindent
set copyindent
set shiftwidth=2
set shiftround
set smarttab

"
" TOGGLE FOR SPACES
"
set expandtab

set showmatch
set ignorecase
set smartcase
set hlsearch 
set incsearch

set nobackup
set noswapfile

set backspace=indent,eol,start

colorscheme jellybeans
set t_Co=256


"
" Muh bindings!
"
let mapleader = ","

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"save
nmap <Leader>w :w<CR>

"remove search highlight
nmap <Leader>n :noh<CR>

"Automatically add {} closing bracket
inoremap {<CR> {<CR>}<C-o>O

nmap <Leader>nt :NERDTree<CR>

if has("gui_running")
	set gfn=Andale\ Mono:h13
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	set guioptions-=b
endif


au Filetype html,xml,xsl source ~/.vim/plugin/closetag.vim

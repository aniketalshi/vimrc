set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" setting up encoding
set encoding=utf-8

" recursively search for tags
" set tags=./tags;,tags;
set nocompatible


" set line number
set number
set autoindent
set smartindent

"highlight column 81
2mat ErrorMsg '\%81v.'

set shiftwidth=2 softtabstop=2
set expandtab

set incsearch ignorecase hlsearch 
set showmatch

filetype plugin on
set ft=cpp

set smartcase
set smarttab
set cul 
set noswapfile
set nobackup
set backspace+=indent,eol,start
set whichwrap+=l,h
set nowrap
set hidden
set linespace=0
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

inoremap jj <ESC>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap Y y$
set clipboard=unnamed
syntax on


set statusline+=%F\ %l\:%c
" changes for airline
set laststatus=2

set t_Co=256
set term=xterm-256color

"colorscheme onehalfdark
colorscheme molokai

"set background=dark
set lazyredraw
let g:solarized_termcolors=256
let g:airline_powerline_fonts = 1
let g:airline_theme='onehalfdark'
let g:rehash256 = 1
"let g:molokai_original = 2

"if file_readable(".vim.custom")
""    so .vim.custom
"endif
"
"let b:thisdir=expand("%:p:h")
"let b:vim=b:thisdir."/.vim"
"if (filereadable(b:vim))
"execute "source ".b:vim
"endif

" Save and restore folding of lines
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

" To move between vimsplits
nnoremap <silent> fl <c-w>l
nnoremap <silent> fh <c-w>h
nnoremap <silent> fk <c-w>k
nnoremap <silent> fj <c-w>j
nnoremap <silent> fg 1<c-w>w

"" Give a shortcut key to NERD Tree
"map <F2> :NERDTreeToggle<CR>
"
""Show hidden files in NerdTree
let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new
"document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

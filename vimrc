set nocompatible
set number
set autoindent
set smartindent
set shiftwidth=4 softtabstop=4
set incsearch ignorecase hlsearch
set showmatch
filetype plugin on
set ft=cpp
set smartcase
set smarttab
set cul 
set noswapfile
set nobackup
set expandtab
set backspace+=indent,eol,start
set whichwrap+=l,h
set nowrap
set hidden
inoremap jj <ESC>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap Y y$
set clipboard=unnamed
set path+=/home/aniket/compilers/sahil/emmCompiler/**
syntax on

"if file_readable(".vim.custom")
"    so .vim.custom
"endif

let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vim"
if (filereadable(b:vim))
        execute "source ".b:vim
endif

" Save and restore folding of lines
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

" Generate ctags in required dir and switch back to current directory
if has("win32") || has("win64")
    let g:tagsDir = 'c:/tmp'
else
    let g:tagsDir = '~/ctags'
endif

function! CtagsOverPath()
    let l:curdir = getcwd()
    execute 'silent cd ' . g:tagsDir
    execute 'silent !ctags -R /home/aniket/compilers/sahil/emmCompiler/**'
    execute 'silent cd ' . l:curdir
endfunction

execute 'silent set tags=' . g:tagsDir . '/tags'
command! GenerateCtags call CtagsOverPath()
nnoremap <silent> <F12> :GenerateCtags<CR>

nnoremap <silent> fl <c-w>l
nnoremap <silent> fh <c-w>h
nnoremap <silent> fk <c-w>k
nnoremap <silent> fj <c-w>j

set t_Co=256
color harlequin

" Pathogen
execute pathogen#infect()
call pathogen#helptags() 

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

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
let g:airline_left_sep=''
let g:airline_right_sep=''

inoremap jj <ESC>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap Y y$
set clipboard=unnamed
set path+=$ADE_VIEW_ROOT/rdbms/olrapid/**
syntax on


set statusline+=%F\ %l\:%c
" changes for airline
set laststatus=2

set t_Co=256
set term=xterm-256color

colorscheme desert
set background=dark
set lazyredraw
let g:solarized_termcolors=256
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'


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

" Set the tags directory
if !empty($ADE_VIEW_ROOT)
    let g:tagsDir = $ADE_VIEW_ROOT
else
    let g:tagsDir = getcwd()
endif

" Generate ctags in required dir and switch back to current directory
function! CtagsOverPath()
    let l:curdir = getcwd()
    execute 'silent cd ' . g:tagsDir
    if !empty($ADE_VIEW_ROOT)
        execute 'silent !/usr/bin/ctags -R $ADE_VIEW_ROOT/rdbms/olrapid/* --languages=C'
    else
        execute 'silent !/usr/bin/ctags --languages=C -R ' . l:curdir
    endif
    execute 'silent cd ' . l:curdir
endfunction

" Shortcut to execute tags
execute 'silent set tags=' . g:tagsDir . '/tags'
command! GenerateCtags call CtagsOverPath()
nnoremap <silent> <F12> :GenerateCtags<CR>

" To move between vimsplits
nnoremap <silent> fl <c-w>l
nnoremap <silent> fh <c-w>h
nnoremap <silent> fk <c-w>k
nnoremap <silent> fj <c-w>j

"" Give a shortcut key to NERD Tree
"map <F2> :NERDTreeToggle<CR>
"
""Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new
"document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Function to checkout file from ade
function! ADECheckout()
 execute "! ade co -nc " . bufname("%")
endfunction

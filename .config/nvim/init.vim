call plug#begin(expand('~/.vim/plugged'))
Plug '907th/vim-auto-save'
Plug 'dag/vim-fish'
Plug 'thaerkh/vim-indentguides' "botei depois
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdcommenter'
call plug#end()

"907th/vim-auto-save
let g:auto_save = 1
let g:auto_save_silent = 1
"dag/vim-fish
syntax enable
filetype plugin indent on


"TAB
color leet2
set expandtab
set tabstop=2
set shiftwidth=2

set clipboard+=unnamedplus
set mouse=a "habilita todas as acoes do mouse
set number
set cursorline

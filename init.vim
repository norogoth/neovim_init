syntax on:

set nu
set undodir=~/.vim/undodir
set undofile
set tabstop=4

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/rstacruz/vim-closer'
call plug#end()

colorscheme gruvbox
set background=dark

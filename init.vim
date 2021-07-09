syntax on

set nu
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set shiftwidth=4
set softtabstop=4

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/rstacruz/vim-closer'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vimwiki/wimwiki'
call plug#end()

colorscheme gruvbox
set background=dark

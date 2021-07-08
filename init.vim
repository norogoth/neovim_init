syntax on:

set nu
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set softtabstop=4
set shiftwidth=0 "just do what softtabstop does

set clipboard+=unnamedplus

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/rstacruz/vim-closer'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vimwiki/wimwiki'
call plug#end()

colorscheme gruvbox
set background=dark

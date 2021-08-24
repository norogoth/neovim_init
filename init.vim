syntax on

set nu
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=indent
set foldlevel=1000

call plug#begin('~/.vim/plugged')
" let g:doom_one_terminal_colors = v:true
Plug 'sts10/vim-pink-moon'
Plug 'franbach/miramare' 
Plug 'romgrk/doom-one.vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'vim-utils/vim-man'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'https://github.com/rstacruz/vim-closer'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vimwiki/vimwiki'
Plug 'alvan/vim-closetag'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'wokalski/autocomplete-flow'
Plug 'jiangmiao/auto-pairs'
" Plug 'kristijanhusak/orgmode.nvim'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'scrooloose/nerdtree'
nnoremap <C-k>b :NERDTreeToggle<CR>
Plug 'Shougo/neosnippet-snippets'
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

" STUFF FOR TAG CLOSE=========================

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.jsx,*.xml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" STUFF FOR TAG CLOSE END===============================

" deoplete
let g:deoplete#enable_at_startup = 1

" neosnippet
let g:neosnippet#enable_completed_snippet = 1

" colorscheme gruvbox
" colorscheme onedark
autocmd BufNewFile,BufRead *.tt setf tt2
colorscheme miramare
set background=dark

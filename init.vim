syntax on

set nu
set autochdir "Should allow the working dir to open when searching
set noswapfile
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldmethod=indent
set foldlevel=999
set ignorecase
set smartcase
set mouse=a
" set clipboard=unnamedplus

" PLUG INS
" Plug 'jelera/vim-javascript-syntax'
" Plug 'junegunn/fzf.vim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'
"Doesn't work atm Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'wokalski/autocomplete-flow'
" Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'vim-utils/vim-man'
" Plug 'kshenoy/vim-signature'
" Plug 'tree-sitter/tree-sitter'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'ahmedkhalf/project.nvim'
" Plug 'p00f/nvim-ts-rainbow'
"" Plug 'vim-airline/vim-airline'
" Plug 'ycm-core/YouCompleteMe'
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-scripts/copypath.vim'
Plug 'https://github.com/rstacruz/vim-closer'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vimwiki/vimwiki'
Plug 'alvan/vim-closetag'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'tpope/vim-obsession'  "Currently overwriting blanks on my sessions on exit
Plug 'vim-perl/vim-perl'
Plug 'luochen1990/rainbow'
Plug 'srcery-colors/srcery-vim'
Plug 'ganezdragon/tree-sitter-perl'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'bling/vim-bufferline'
let g:bufferline_modified = '+'
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ ]
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" Rainbow config
 let g:rainbow_conf = {
 \	'guifgs': ['#8FBCBB', '#F7E1B6', 'F5C6FD', '#88C0D0', '#B48EAD', '#5E81AC','#EBCB8B'],
 \	}

" Rainbow config end
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_section_y=''
"Plug 'vim-airline/vim-airline-themes'

" THEMES
Plug 'sts10/vim-pink-moon'
Plug 'mhartington/oceanic-next'
Plug 'franbach/miramare' 
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'bluz71/vim-moonfly-colors'
Plug 'romgrk/doom-one.vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'sonobre/briofita_vim'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'jacoborus/tender.vim'
Plug 'norogoth/nord-vim' " my fork of the original nord theme
Plug 'ghifarit53/tokyonight-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sainnhe/everforest'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sainnhe/gruvbox-material'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ajmwagar/vim-deus'
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let base16colorspace=256  " Access colors present in 256 colorspace

"For func argument completion
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
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.jsx,*.tt,*.epl*,*.xml'

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

" Shortcuts
nn <silent> <F9> :let @+=expand('%:p')<CR>
nn <silent> <C-c> :Telescope file_browser<CR>
" nn <silent> <F10> :let @+=expand('%:p')<CR> " TODO: make this give truncated path

autocmd BufNewFile,BufRead *.tt set syntax=tt2html
autocmd BufNewFile,BufRead *.epl set syntax=tt2html
"au BufNewFile * norm! This_is_a_new_buffer.

" Telescope stuff
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
colorscheme doom-one

" set background=dark
" fixes glitch? in colors when using vim with tmux
set t_Co=256
let g:gruvbox_constrast_light='soft'
let g:nord_cursor_line_number_background = 1
set statusline+=%F

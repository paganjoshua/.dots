" Plugins
source ~/.config/nvim/plugins.vim

" Colors
"let g:tokyonight_style = "night"
"colorscheme tokyonight
colorscheme wal

" Config
lua require('config')

" Cursor
set guicursor=i-ci:hor20  " set cursor to horizontal bar @ 20% char height

" Settings
set hlsearch      " highlight search
set tabstop=2     " # of columns occupied by a tab
set softtabstop=2 " see multiple spaces as tabs
set splitright    " set terminal right
set expandtab     " convert tabs to whitespace
set shiftwidth=2  " width for auto indents
set autoindent    " indent new line same amount as previous
set number        " show line numbers
set ruler         " show cursor position
set noswapfile    " disable creating swap
syntax on         " enable syntax highlighting
filetype on

" Shortcuts
let g:mapleader = "\<Space>"
map <C-n> :NERDTreeToggle<CR>
nmap <space>r :RnvimrToggle<CR>

" FileType Settings
autocmd FileType text setlocal formatoptions=aw2tq 
let g:markdown_fenced_languages = ['javascript', 'go']

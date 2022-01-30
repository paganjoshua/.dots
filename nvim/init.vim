" Plugins
source ~/.config/nvim/plugins.vim

" Colors
let g:tokyonight_style = "night"
colorscheme tokyonight

" Settings
set hlsearch  " highlight search
set tabstop=2 " # of columns occupied by a tab
set softtabstop=2 " see multiple spaces as tabs
set splitbelow    " set terminal below
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

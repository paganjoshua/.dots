" Plugins
source ~/.config/nvim/plugins.vim

" Colors
let g:tokyonight_style = "night"
let g:tokyonight_colors = {
  \ 'none': "NONE",
  \ 'bg_dark': "#1f2335",
  \ 'bg': '#611a1a',
  \ 'bg_highlight': "#292e42",
  \ 'bg_visual': '#16161e',
  \ 'fg_sidebar': '#a11a1a',
  \ 'terminal_black': "#414868",
  \ 'fg': '#000000',
  "\ 'fg': '#c0caf5',
  \ 'fg_dark': "#a9b1d6",
  \ 'fg_gutter': "#3b4261",
  \ 'dark3': "#545c7e",
  \ 'comment': '#9799a1',
  "\ 'comment': '#565f89',
  \ 'dark5': "#737aa2",
  \ 'blue0': "#3d59a1",
  "\ 'blue': "#7aa2f7",
  \ 'blue': "fg",
  \ 'cyan': "#7dcfff",
  \ 'blue1': "#2ac3de",
  \ 'blue2': "#0db9d7",
  \ 'blue5': "#89ddff",
  \ 'blue6': "#B4F9F8",
  \ 'blue7': "#394b70",
  "\ 'magenta': '#bb9af7',
  \ 'magenta': 'red',
  \ 'magenta2': "#ff007c",
  \ 'purple': "#9d7cd8",
  \ 'orange': "#ff9e64",
  "\ 'yellow': "#e0af68",
  \ 'yellow': '#e8c917',
  "\ 'green': '#9ece6a',
  \ 'green': "#4cc26d",
  \ 'green1': "#73daca",
  \ 'green2': "#41a6b5",
  \ 'teal': "#1abc9c",
  \ 'red': "#f7768e",
  "\ 'red1': "#db4b4b", 
  \ 'red1': '#f11a1a',
  \ }
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

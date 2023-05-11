call plug#begin(stdpath('data') . '/plugged')

"Plug 'vim-airline/vim-airline'                             " status bar
Plug 'ap/vim-css-color'                                     " css color preview
Plug 'nvim-lua/plenary.nvim'                                " lua lib for telescope
Plug 'nvim-telescope/telescope.nvim'                        " fuzzy-finder
Plug 'scrooloose/NERDTree'                                  " nerd tree
Plug 'jiangmiao/auto-pairs'                                 " match brackets
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}             " ranger
Plug 'morhetz/gruvbox'                                      " gruvbox
Plug 'folke/tokyonight.nvim', {'branch': 'main'}            " tokyonight
Plug 'dylanaraps/wal.vim'                                   " pywal
Plug 'jvirtanen/vim-hcl'                                    " hcl syntax
Plug 'vim-scripts/Tabmerge'                                 " tabmerge
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "treesitter
call plug#end()

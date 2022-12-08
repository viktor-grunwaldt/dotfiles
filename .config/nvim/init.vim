:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'fratajczak/one-monokai-vim'

call plug#end()

:syntax on
:colorscheme one-monokai

:set encoding=UTF-8
:set termguicolors

highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none

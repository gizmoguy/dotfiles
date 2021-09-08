set nocompatible
set secure
set nomodeline

filetype on
filetype indent on
filetype plugin on

" encoding
set enc=utf-8 fenc=utf-8

" indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" visual
set confirm
set cursorline
set colorcolumn=100
set incsearch
set hlsearch

if has("gui_running")
    set mouse=a
else
    set mouse=
endif

" lightline
set laststatus=2

" monokai
syntax on
colorscheme monokai
if !has('gui_running')
    set t_Co=256
endif

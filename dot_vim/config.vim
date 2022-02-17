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
syntax on
set confirm
set cursorline
set incsearch
set hlsearch
if v:version >= 703
    set colorcolumn=100
endif

if has("gui_running")
    set mouse=a
else
    set mouse=
endif

" lightline
set laststatus=2

" monokai
if has_key(plugs, 'vim-monokai')
    colorscheme monokai
    if !has('gui_running')
        set t_Co=256
    endif
endif

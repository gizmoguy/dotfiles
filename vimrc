set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Install some bundles
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/dhcpd.vim'

set complete=.,w,b,u,U,t,i,d
set enc=utf-8 fenc=utf-8
set showfulltag
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cursorline
set showmatch
set wildmenu
set incsearch
set secure
set modeline
set modelines=5
set pastetoggle=<F10>

" Appearance settings
syntax on
set background=dark
set t_Co=256
colorscheme molokai

highlight ColorColumn ctermbg=235 guibg=#2c2d27
highlight CursorLine ctermbg=235 guibg=#2c2d27
highlight CursorColumn ctermbg=235 guibg=#2c2d27

if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
endif

autocmd FileType make setlocal noexpandtab

" Highlight characters past column 80
" In Vim >= 7.3, also highlight columns 120+
if exists('+colorcolumn')
" (I picked 120-320 because you have to provide an upper bound and 320 just
" covers a 1080p GVim window in Ubuntu Mono 11 font.)
  let &colorcolumn="80,".join(range(120,320),",")
else
" fallback for Vim < v7.3
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Match extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/

if version >= 702
  autocmd BufWinLeave * call clearmatches()
endif

" Add a :W which saves with sudo
command! W w !sudo tee % > /dev/null

" Maps
map <C-n> :NERDTreeToggle<CR>

set nocompatible
set complete=.,w,b,u,U,t,i,d
set enc=utf-8 fenc=utf-8
set showfulltag
set listchars=tab:>.,trail:.,extends:#,nbsp:.

syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set showmatch
set modeline
set modelines=5
set pastetoggle=<F10>

set t_Co=256
colorscheme molokai
set bg=dark

if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
endif

" Highlight characters past column 80
if version >= 703
  set cc=80
elseif version >= 702
  :au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
  :au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
else
  :match ErrorMsg '\%>80v.\+'
endif

" Match extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave * call clearmatches()

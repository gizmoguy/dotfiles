if has('nvim')
    call plug#begin(stdpath('data') . '/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

if !has('nvim') && has('python3')
    " Enable python rpc features in vim
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

if has('python3')
    " Plugins that require python rpc features
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
    endif
    let g:deoplete#enable_at_startup = 1
endif

Plug 'semanser/vim-outdated-plugins'
let g:outdated_plugins_silent_mode = 1

Plug 'ypcrts/securemodelines'

Plug 'crusoexia/vim-monokai'

Plug 'itchyny/lightline.vim'

if has('popup_hide')
    if has('nvim')
        Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'gelguy/wilder.nvim'
    endif
endif

Plug 'preservim/nerdtree'

Plug 'itchyny/vim-gitbranch'
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

Plug 'ntpeters/vim-better-whitespace'

Plug 'Yggdroot/indentLine'

Plug 'vim-syntastic/syntastic'

Plug 'dense-analysis/ale'

Plug 'kassio/neoterm'
let g:neoterm_default_mod = 'botright'

Plug 'vim-test/vim-test'
let test#strategy = 'neoterm'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'pearofducks/ansible-vim'

" Load plugins
call plug#end()

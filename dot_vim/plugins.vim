if has('nvim')
    call plug#begin(stdpath('data') . '/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

Plug 'semanser/vim-outdated-plugins'
let g:outdated_plugins_silent_mode = 1

Plug 'ypcrts/securemodelines'

Plug 'crusoexia/vim-monokai'

Plug 'itchyny/lightline.vim'

Plug 'gelguy/wilder.nvim'

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

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'kassio/neoterm'
let g:neoterm_default_mod = 'botright'

Plug 'vim-test/vim-test'
let test#strategy = 'neoterm'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'pearofducks/ansible-vim'

" Load plugins
call plug#end()

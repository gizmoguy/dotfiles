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
    python3 << EOF
import vim
try:
    from neovim import VERSION as v
    vim.vars['modern_nvim'] = (v.major, v.minor, v.patch) >= (0, 4, 1)
except ImportError:
    vim.vars['modern_nvim'] = False
try:
    import msgpack
    vim.vars['modern_msgpack'] = msgpack.version >= (1, 0, 0)
except ImportError:
    vim.vars['modern_msgpack'] = False
EOF
else
    let modern_nvim = 0
    let modern_msgpack = 0
endif

if modern_nvim
    " Plugins that require modern python rpc features
    if modern_msgpack
        " Plugins that require modern msgpack
        if has('nvim')
            Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        else
            Plug 'Shougo/deoplete.nvim'
        endif
    else
        if has('nvim')
            Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'tag': '5.2' }
        else
            Plug 'Shougo/deoplete.nvim' { 'tag': '5.2' }
        endif
    endif
endif

Plug 'semanser/vim-outdated-plugins'

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

Plug 'ntpeters/vim-better-whitespace'

Plug 'Yggdroot/indentLine'

Plug 'vim-syntastic/syntastic'

Plug 'dense-analysis/ale'

Plug 'kassio/neoterm'

Plug 'vim-test/vim-test'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'pearofducks/ansible-vim'

" Load plugins
call plug#end()
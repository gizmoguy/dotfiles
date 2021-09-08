" vim-outdated-plugins
let g:outdated_plugins_silent_mode = 1

" wildmenu
if has_key(plugs, 'wilder.nvim')
    call wilder#setup({'modes': [':', '/', '?']})
    call wilder#set_option('renderer', wilder#popupmenu_renderer({
          \ 'highlighter': wilder#basic_highlighter(),
          \ }))
else
    set wildmenu
endif

" lightline
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }

" vim-test
let test#strategy = 'neoterm'

" neoterm
let g:neoterm_default_mod = 'botright'

" deoplete
let g:deoplete#enable_at_startup = 1

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
let g:lightline = {}
let g:lightline.component_expand = {
    \  'gitbranch': 'gitbranch#name',
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_infos': 'lightline#ale#infos',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
    \ }
let g:lightline.component_type = {
    \     'linter_checking': 'right',
    \     'linter_infos': 'right',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \     'linter_ok': 'right',
    \ }
let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [
    \       [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
    \       [ 'lineinfo' ],
    \       [ 'percent' ],
    \       [ 'fileformat', 'fileencoding', 'filetype' ]
    \   ]
    \ }

" vim-test
let test#strategy = 'neoterm'

" neoterm
let g:neoterm_default_mod = 'botright'

" ale
let g:ale_fix_on_save = 1
let g:ale_linters = {
    \   'python': ['bandit', 'ruff', 'mypy', 'pylint'],
    \ }
let g:ale_linters_ignore = {
    \   'c': ['cc'],
    \}
let g:ale_fixers = {
    \   'python': ['ruff'],
    \ }
let g:ale_python_flake8_options = '--config=$HOME/.config/flake8'

" echodoc
let g:echodoc_enable_at_startup = 1
let g:echodoc#type = 'floating'

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

" float-preview
if has_key(plugs, 'float-preview.nvim')
    set completeopt-=preview
    let g:float_preview#docked = 0
endif

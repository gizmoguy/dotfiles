au BufRead,BufNewFile */roles/*/(tasks|handlers|defaults)/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */roles/*/templates/* set filetype=jinja2
au BufRead,BufNewFile */.github/*/*.y{,a}ml let b:ale_linters = {'yaml': ['actionlint']}
au BufRead,BufNewFile *.hujson set filetype=json5

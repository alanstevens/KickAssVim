" Syntastic-specific config settings

let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby' " take the current ruby version specified by rbenv

" use signs to indicate lines with errors
" only if signs are available
if has('signs')
  let g:syntastic_enable_signs = 1
endif

" automatically open the location list when a buffer has errors
let g:syntastic_auto_loc_list=1

" always show warnings
" let g:syntastic_quiet_warnings=0
"don't care about warnings
let g:syntastic_quiet_warnings=1

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

" syntastic is too slow for haml and sass
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': ['haml','scss','sass'] }

"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

" Install jshint:
" $ brew install node.js
" $ npm install -g jshint

" May need this:
" Then add '/usr/local/share/npm/bin' to your PATH (probably in ~/.bashrc). For example, add the line: export PATH="$PATH:/usr/local/share/npm/bin"

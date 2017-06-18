" Syntastic-specific config settings
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby' " take the current ruby version specified by rbenv
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" use signs to indicate lines with errors
" only if signs are available
if has('signs')
  let g:syntastic_enable_signs = 1
endif

let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['eslint']
" silence complaints about angular attributes
let g:syntastic_html_tidy_ignore_errors = ["proprietary attribute \"ng-"]
" silence complaints about ApproveMe attributes
let g:syntastic_html_tidy_ignore_errors = ["proprietary attribute \"am-"]
" Angular in particular often makes 'empty'
let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]
" Silence warning about angularjs and ApproveMe directives
let g:syntastic_html_tidy_ignore_errors += [
      \ "<ng-",
      \ "discarding unexpected </ng-",
      \ "<am-",
      \ "discarding unexpected </am-"]
" Ignore svg elements:
let g:syntastic_html_tidy_ignore_errors += [
      \ "<svg",
      \ "discarding unexpected /svg>",
      \ "<defs",
      \ "discarding unexpected /defs>",
      \ "<path",
      \ "discarding unexpected /path>",
      \ "<polygon",
      \ "discarding unexpected /polygon>",
      \ "<g",
      \ "discarding unexpected /g>",
      \ "<text",
      \ "discarding unexpected /text>"]
" nuclear option to avoid spurious errors
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
" define your own proprietary attributes before this plugin loads
let g:syntastic_html_tidy_ignore_errors   = [' proprietary attribute "am-']
" let g:syntastic_html_tidy_blocklevel_tags = ['myCustomTag']
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

" syntastic is too slow for haml and sass
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': ['haml','scss','sass'] }

"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

" Recommended settings:
set statusline+=%#warningmsg#
let g:statline_syntastic = 0 "This stops some startup errors. Don't know what I'm losing, however.
" set statusline+=%{SyntasticStatuslineFlag()} " Commented due to startup error messages
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list=1 " automatically open the location list when a buffer has errors
let g:syntastic_check_on_open=1 " configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_wq = 0
" nuclear option to eliminate hmtltidy for yelling about custom tags
" let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" Use tsuquyomi for typescript syntax checking
" set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

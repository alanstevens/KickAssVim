" ctrlp specific settings

" I have no idea why these defaults don't work for me
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
noremap <C-P> :CtrlP<CR>
inoremap <C-P> :CtrlP<CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Default to filename searches - so that appctrl will find application controller
let g:ctrlp_by_filename = 1

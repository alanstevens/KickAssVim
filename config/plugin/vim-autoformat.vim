" autoformat-specific settings

" format the entire file
nnoremap <silent> <leader>kd :Autoformat<CR>
noremap <c-k><c-d> :Autoformat<CR>
" au BufWrite * :Autoformat

" To disable the fallback to vim's indent file, set the following variables to 0.
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0
"
" to manually retab or remove trailing whitespace
" gg=G
" :retab
" :RemoveTrailingSpaces

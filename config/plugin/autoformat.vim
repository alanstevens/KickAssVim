" autoformat-specific settings

" format the entire file
" nnoremap <silent> <leader>kd :Autoformat<CR><CR>
nnoremap <silent> <leader>kd ggVG=

" nnoremap <silent> <leader>kd :SaveCursor<CR>ggVG=<CR>:KillWhitespace<CR>:nohls<CR>:RestoreCursor<CR>

" Kills Trailing Whitespaces
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

function! SaveCursor()
  " Preparation: save last search, and cursor position.
  let s:_s=@/
  let s:l = line(".")
  let s:c = col(".")
endfunction
command! SaveCursor call SaveCursor()

function! RestoreCursor()
  " Clean up: restore previous search history, and cursor position
  let @/=s:_s
  call cursor(s:l, s:c)
endfunction
command! RestoreCursor call RestoreCursor()

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
" Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
" Do the business:
    %s/\s\+$//e
" Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

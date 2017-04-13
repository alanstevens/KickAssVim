
if has("autocmd")
  " Some file types should wrap their text
  function! s:setupWrapping()
    set wrap
    set linebreak
    set textwidth=84
    set nolist
  endfunction

  " this group allows us to reload them in a running Vim instance.
  augroup AutoCommands
    au!
    " Vim Tip #1279 - Highlight current line in Insert Mode
    " http://www.vim.org/tips/tip.php?tip_id=1279
    autocmd InsertLeave * set nocul
    autocmd InsertEnter * set cul

    " Automatically resize splits when resizing window
    autocmd VimResized * wincmd =

    " remember last position in file
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


    " Remove any trailing whitespace in the file
    autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

    " Vim Tip #565: Never see ^M and pesky trailing spaces again
    " Good to avoid flames in some open source circles
    autocmd BufRead * silent! %s/[\r \t]\+$//

    "recalculate the tab warning flag when idle and after writing
    autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

    "recalculate the long line warning when idle and after saving
    autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning
  augroup END
endif

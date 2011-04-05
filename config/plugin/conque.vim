""""""""""""""""""""""""""""""""""""""""
"" Conque-specific settings
""""""""""""""""""""""""""""""""""""""""

" <Leader>si starts IRB.
map <Leader>si :ConqueTermSplit irb<CR>

" <Leader>sx starts a custom process
map <Leader>sx :ConqueTermSplit<SPACE>

if has("win32")
    let g:ConqueTerm_ColorMode = 'conceal'

    " <Leader>ss starts a normal shell.
    map <Leader>ss :exec "ConqueTermSplit " . "cmd.exe"<CR>
    map <Leader>sv :exec "ConqueTermVSplit " . "cmd.exe"<CR>
else
    " <Leader>ss starts a normal shell.
    map <Leader>ss :exec "ConqueTermSplit " . $SHELL<CR>
    map <Leader>sv :exec "ConqueTermVSplit " . $SHELL<CR>

    " <Leader>sc starts script/console
    map <Leader>sc :ConqueTermSplit ./script/console<CR>
endif

if has("gui_macvim")
    " Command-e for ConqueTerm
    map <D-e> :call StartTerm()<CR>

    " ConqueTerm wrapper
    function! StartTerm()
        execute 'ConqueTerm ' . $SHELL . ' --login'
        setlocal listchars=tab:\ \
    endfunction
endif

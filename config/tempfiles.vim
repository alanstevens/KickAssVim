""""""""""""""""""""""""""""""""""""""""
"" settings controlling temporary/backup files
""""""""""""""""""""""""""""""""""""""""

if has("win32")
    set backupdir=$TEMP
    set directory=$TEMP
else
    set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
endif

" Configure undo files (if we're in vim 7.3 and +persistent_undo has been
" compiled)
if has("persistent_undo")
    if has("win32")
        set undodir=$TEMP
    else
        set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    endif
    set undofile
endif

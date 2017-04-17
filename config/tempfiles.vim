" settings controlling temporary/backup files

" Stop annoying me every time I have a file open in two different vim sessions.
" 'e' is "Edit Anyway" in this circumstance. Other options you could use here:
" 'q' - quit.
" 'o' - open the file in read-only mode.
" 'r' - recover the changes.
autocmd  SwapExists  *  :let v:swapchoice = 'e'

set backup
set writebackup

" Backup and swap files
if has("win32")
    set backupdir=$TEMP
    set directory=$TEMP
else
    " where to put backup files.
    set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    " where to put swap files.
    set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    set backupskip=/tmp/*,/private/tmp/*
endif

" Configure undo files (if we're in vim 7.3 and +persistent_undo has been compiled)
if has("persistent_undo")
    if has("win32")
        set undodir=$TEMP
    else
        set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    endif
    set undofile
endif

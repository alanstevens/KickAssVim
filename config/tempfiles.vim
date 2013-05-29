" settings controlling temporary/backup files

" Backup and swap files
if has("win32")
  set backupdir=$TEMP
  set directory=$TEMP
else
  " where to put backup files.
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  " where to put swap files.
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
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

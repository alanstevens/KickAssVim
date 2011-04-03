""""""""""""""""""""""""""""""""""""""""
"" Settings that control tab-completion,
"" wildcard menus, etc.
""""""""""""""""""""""""""""""""""""""""

" enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu

" enable omnicompletion
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" make cmdline tab completion similar to bash
"set wildmode=list:longest
"set wildmode=list:longest,full
set wildmode=list:longest,list:full

" stuff to ignore when tab completing
"set wildignore=*.o,*.obj,*~
set wildignore+=*.o,*.obj,.hg,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

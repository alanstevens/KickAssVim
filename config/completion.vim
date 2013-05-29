" Settings that control tab-completion,
" wildcard menus, etc.

" enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu

" enable omnicompletion
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" make cmdline tab completion similar to bash
set wildmode=list:longest,list:full

" stuff to ignore when tab completing:

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

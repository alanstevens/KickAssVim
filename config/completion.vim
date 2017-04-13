" Settings that control tab-completion,
" wildcard menus, etc.

" set wildmenu " set in sensible.vim

" enable omnicompletion
set ofu=syntaxcomplete#Complete

" make cmdline tab completion similar to bash
" set wildmode=list:longest,list:full
set wildmode=longest,list,full

" stuff to ignore when tab completing:

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
 set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*
" use tab-complete to see a list of possiblities when entering commands

set wildmode=list:full
set wildmode=list:longest
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

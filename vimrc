
set nocompatible      " Use vim, no vi defaults
set encoding=utf-8    " Set default encoding to UTF-8

" use ; for <Leader>
let mapleader = ";"

" No startup messages
set shm+=atmI

" turn filetype settings off so that stuff gets loaded from pathogen
filetype off

" use pathogen to load plugins/etc.
call pathogen#incubate()
call pathogen#helptags()

" load everything else in its own config file
runtime! config/**/*

if has('win32')
  source $VIMRUNTIME/mswin.vim
endif

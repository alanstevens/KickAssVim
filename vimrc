set nocompatible      " Use vim, no vi defaults

let mapleader = ","

" No startup messages
set shm+=atmI

source $HOME/.vim/plug.vim

" load everything else from its own config file
runtime! config/**/*

if has('win32')
  source $VIMRUNTIME/mswin.vim
endif

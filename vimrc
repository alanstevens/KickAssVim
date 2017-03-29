set nocompatible " Use vim, no vi defaults

let mapleader = ","

set shm+=atmI " No startup messages

source $HOME/.vim/bundle.vim " add all plugins to the runtime path

runtime! config/**/* " load all config files

if has('win32')
  source $VIMRUNTIME/mswin.vim
endif

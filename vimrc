" _  ___      _                        __      ___
" | |/ (_)    | |        /\             \ \    / (_)
" | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
" |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
" | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
" |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

set nocompatible " Use vim, no vi defaults

let mapleader = ","

set shm+=atmI " No startup messages

source $HOME/.vim/plugins.vim " add all plugins to the runtime path

runtime! config/**/* " load all config files

if has('win32')
  source $VIMRUNTIME/mswin.vim
endif

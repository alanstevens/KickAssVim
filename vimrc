" _  ___      _                        __      ___
" | |/ (_)    | |        /\             \ \    / (_)
" | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
" |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
" | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
" |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

set nocompatible " Use vim, no vi defaults

set shm+=atmI " No startup messages

if has('win32') || has ('win64')
    source $HOME/vimfiles/plugins.vim " add all plugins to the runtime path
else
    source $HOME/.vim/plugins.vim " add all plugins to the runtime path
endif

" Common customizations:
" -------------------------------------------------------------------------------
let mapleader = "," " must be set before loading keybindings from config

set tabstop=4     " a tab is four spaces
set shiftwidth=4  " an autoindent (with <<) is four spaces
set expandtab     " use spaces, not tabs
set softtabstop=4 " The number of columns vim uses when you hit Tab in insert mode.

try " the first time vim is run, the colorscheme is not installed.
    " find more color schemes at http://vimcolors.com/
    colorscheme ir_black " Set your terminal theme the same.
catch
endtry

" Fonts must come from http://nerdfonts.com/. I use Hack.
if has('win32') || has ('win64')
    "set guifont=Hack:h12 " Set your terminal font the same
    set guifont=Knack\ NF:h12 " Set your terminal font the same
else
    set guifont=Knack\ Nerd\ Font:h16 " Set your terminal font the same
endif
" -------------------------------------------------------------------------------

runtime! config/**/* " load all config files

if has('win32') || has ('win64')
    source $VIMRUNTIME/mswin.vim
endif

#!/bin/bash
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/gvimrc" > ~/.gvimrc
cd ~/.vim/
rake

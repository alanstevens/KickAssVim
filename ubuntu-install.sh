#!bin/bash
sudo apt-get install vim-nox exuberant-ctags ncurses-term curl git libsqlite3-dev
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/gvimrc" > ~/.gvimrc
cd ~/.vim/
rake

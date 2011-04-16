#!bin/bash
sudo apt-get install vim-nox exuberant-ctags ncurses-term curl ruby rake git ruby-dev
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/gvimrc" > ~/.gvimrc
cd ~/.vim/
rake

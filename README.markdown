      _  ___      _                        __      ___
     | |/ (_)    | |        /\             \ \    / (_)
     | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
     |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
     | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
     |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

<!-- # Kick Ass Vim -->

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim][] editor.

Kick Ass Vim is currently only tested on MacOS.

Prerequisites:
* Homebrew: brew.sh
* Ruby and rake
* node and npm
* ctags: `brew install ctags`
* cmake: ` brew install cmake`
* Vim: `brew install vim`
* NeoVim: `brew install neovim/neovim/neovim`
* Add python 2.7+ support `pip2 install neovim`
* MacVim: `brew cask install macvim`
* install fuzzy finder (fzf):

`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`

`cd ~/.fzf`

`git fetch --tags`

`git checkout tags/0.16.4`

`./install --all`

* For typescript ctags support, edit or create `~/.ctags` and add the values here:
  https://github.com/majutsushi/tagbar/wiki#typescript

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`.

3. The most common customizations (leader, font, colors, indenting) are in vimrc.

[Vim]: http://www.vim.org

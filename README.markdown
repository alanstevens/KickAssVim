      _  ___      _                        __      ___
     | |/ (_)    | |        /\             \ \    / (_)
     | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
     |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
     | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
     |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

<!-- # Kick Ass Vim -->
<img src="https://github.com/alanstevens/KickAssVim/raw/master/KickAssVim-logo.png" width=200>

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim][] editor.

Kick Ass Vim is currently only tested on MacOS.

Prerequisites:
* xCode command line tools `xcode-select --install`
* Homebrew: brew.sh
* Ruby and rake
* node and npm
* ctags: `brew install ctags`
* cmake: ` brew install cmake`
* Vim: `brew install vim`
* NeoVim: `brew install neovim/neovim/neovim`
* Add python 2.7+ support for  NeoVim `pip2 install neovim`
* MacVim: `brew cask install macvim`
* Install a font from http://nerdfonts.com/ (I use [Hack][] )

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`.

3. The most common customizations (leader, font, colors, indenting) are in vimrc.

[Vim]: http://www.vim.org
[Hack]: https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf

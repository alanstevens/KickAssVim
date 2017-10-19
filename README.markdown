      _  ___      _                        __      ___
     | |/ (_)    | |        /\             \ \    / (_)
     | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
     |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
     | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
     |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

<!-- # Kick Ass Vim -->
<img src="https://github.com/alanstevens/KickAssVim/raw/master/KickAssVim-logo.png" width=200>

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim](http://www.vim.org) editor.

Kick Ass Vim is currently only tested on macOS. Although, some Windows support exists.

Prerequisites:   
* consider installing the [ThoughtBot Laptop Script](https://github.com/thoughtbot/laptop)  
* xCode command line tools `xcode-select --install`
* [Homebrew](https://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* Ruby and rake
* node and npm
* ctags: `brew install ctags`
* cmake: ` brew install cmake`
* Vim: `brew install vim`
* NeoVim: `brew install neovim`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`
* MacVim: `brew cask install macvim`
* Install a font from [Nerd Fonts](http://nerdfonts.com/)  (I use [Hack]( https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf))

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`

3. The most common customizations (leader, font, colors, indenting) are in `~/.vim/vimrc`
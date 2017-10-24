      _  ___      _                        __      ___
     | |/ (_)    | |        /\             \ \    / (_)
     | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
     |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
     | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
     |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

<!-- # Kick Ass Vim -->
<img src="https://github.com/alanstevens/KickAssVim/raw/master/KickAssVim-logo.png" width=200>

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim](http://www.vim.org) editor which runs on Windows and macOS.

## Windows:

All commands should be run in an administrator console. You will need to restart your shell for new paths to take effect.

### Prerequisites

* Visual Studio 2017: Download the [installer](https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Professional&rel=15). Include *C++ for desktop development* to get the compiler tools.
* [Chocolatey](https://chocolatey.org/)
* Ruby: `choco install ruby`
* Node: `choco install nodejs`
* rake: `gem install rake`
* Vim: `choco install vim`
* neovim: `choco install neovim`
* cmake `choco install cmake`
* ctags `choco install ctags`
* Python2 `choco install python2`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`
* .NET Framework 3.5 `choco install dotnet3.5`
* A font from [Nerd Fonts](http://nerdfonts.com/). I use [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Hack.zip).
* Download [gtools](http://www.p-nand-q.com/download/gtools/gtools-current.exe) 
* Run the gtools installer as *administrator* 

### Adjust Paths

* use pathed to add pathed to your path. (Oooh, recursion): `"C:\Program Files (x86)\p-nand-q.com\GTools\pathed.exe" /append "C:\Program Files (x86)\p-nand-q.com\GTools" /user` (Restart your console.)
* cmake: `pathed /append "C:\Program Files\CMake\bin" /user`
* tsserver: `pathed /append %userprofile%\AppData\Roaming\npm /user`
* MSBuild: `pathed /append "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin" /user`
* ctags: `pathed /append %userprofile%\AppData\Local\Temp\chocolatey\chocolatey\ctags\ctags58 /user`

### Install
* Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git %userprofile%\vimfiles`
* Open a fresh, administrator console
* Install all plugins and dependencies: `cd %userprofile%\vimfiles` and run `rake`

The most common customizations (leader, font, colors, indenting) are in `%userprofile%\vimfiles\vimrc`

***

## Mac

Consider installing the [ThoughtBot Laptop Script](https://github.com/thoughtbot/laptop)

### Prerequisites

* xCode command line tools `xcode-select --install`
* [Homebrew](https://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* `brew install ruby`
* `gem install rake`
* `brew install node`
* `brew install mono` (*for c# autocompletion*)
* `brew install ctags`
* `brew install cmake`
* `brew install vim`
* `brew install neovim`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`
* `brew cask install macvim`
* Install a font from [Nerd Fonts](http://nerdfonts.com/)  (I use [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Hack.zip))

### Install

* Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`
* Install all plugins and dependencies: `cd ~/.vim` and run `rake`

The most common customizations (leader, font, colors, indenting) are in `~/.vim/vimrc`
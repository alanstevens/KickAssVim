<!-- # Kick Ass Vim -->
# A Kick Ass Vim Development Environment.

<img src="https://github.com/alanstevens/KickAssVim/raw/master/KickAssVim-logo.png" width=200>

Kick Ass Vim is a turn-key configuration for the [Vim](http://www.vim.org) editor. KickAssVim runs on all major platforms:
* [Windows](#windows)
* [Mac](#mac)
* [Linux](#ubuntu-linux)

See the list of included [plugins](https://github.com/alanstevens/KickAssVim/blob/master/plugins.vim).

Much of the setup complexity for Kick Ass Vim is necessary to compile [YouCompleteMe](https://github.com/Valloric/YouCompleteMe). It's totally worth it.

For best compatability, grab a font from [Nerd Fonts](http://nerdfonts.com/). I use [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Hack.zip).

# Installation:

## Windows

All commands should be run in an administrator shell. You will need to restart your shell for new paths to take effect.

### Prerequisites

* Vim: `choco install vim`
* neovim: `choco install neovim`
* Visual Studio 2017: [Community Edition](https://www.visualstudio.com/free-developer-offers/) is free.
  * Include *C++ for desktop development* to get the compiler tools.
* Install [Chocolatey](https://chocolatey.org/) and restart your shell (as administrator).
* Ruby: `choco install ruby`
* Node: `choco install nodejs`
* rake: `gem install rake`
* The Silver Searcher `choco install ag`
* cmake: `choco install cmake`
* make: `choco install make`
* ctags: `choco install ctags`
* Python2: `choco install python2`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`
* curl: `choco install curl`
* .NET Framework 3.5: `choco install dotnet3.5`

### Adjust Paths

* Download [gtools](http://www.p-nand-q.com/download/gtools/gtools-current.exe)
* Run the gtools installer as *administrator*
* use pathed to add pathed to your path. (Oooh, recursive): `"C:\Program Files (x86)\p-nand-q.com\GTools\pathed.exe" /append "C:\Program Files (x86)\p-nand-q.com\GTools" /user`
* Restart your shell as administrator.
* cmake: `pathed /append "C:\Program Files\CMake\bin" /user`
* tsserver: `pathed /append %userprofile%\AppData\Roaming\npm /user`
* MSBuild: `pathed /append "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin" /user`
* restart your shell as administrator

### Install
* Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git %userprofile%\vimfiles`
* Install all plugins and dependencies: `cd %userprofile%\vimfiles` and run `rake`

The most common customizations (leader, font, colors, indenting) are in `%userprofile%\vimfiles\vimrc`

***

## Mac

Consider installing the [ThoughtBot Laptop Script](https://github.com/thoughtbot/laptop)

### Prerequisites

* Vim: `brew install vim`
* NeoVim: `brew install neovim`
* MacVim: `brew cask install macvim`
* xCode command line tools: `xcode-select --install`
* [Homebrew](https://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* Ruby: `brew install ruby`
* Rake: `gem install rake`
* Nodejs: `brew install node`
* [Mono](http://www.mono-project.com/): `brew install mono` (*for c# autocompletion*)
* ctags: `brew install ctags`
* cmake: `brew install cmake`
* python headers: `sudo apt-get install python-dev python3-dev`
* curl: `brew install curl`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`

### Install

* Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`
* Install all plugins and dependencies: `cd ~/.vim` and run `rake`

The most common customizations (leader, font, colors, indenting) are in `~/.vim/vimrc`
***
## Ubuntu Linux
### Prerequisites
* gvim: `sudo apt install gvim`
* neovim: `sudo apt install neovim-qt`
* [Mono](https://www.mono-project.com/download/stable/) (for C# autocompletion)
* ruby: `sudo apt install ruby-all-dev`
* The Silver Searcher: `sudo apt install silversearcher-ag`
* nodejs: `sudo apt install nodejs`
* curl: `sudo apt install curl`
* Ruby file utils: `gem install file-utils`
* Pip package manager: `sudo apt install python-pip`
* Add python 2.7+ support for  NeoVim: `pip2 install neovim`
* Cmake: `sudo apt-get install build-essential cmake`
* Ctags: `sudo apt install ctags`
* Rake: `sudo gem install rake`
### Install

* Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`
* Install all plugins and dependencies: `cd ~/.vim` and run `sudo rake`

The most common customizations (leader, font, colors, indenting) are in `~/.vim/vimrc`

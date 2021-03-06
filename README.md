# A Kick Ass Vim Development Environment.

<img src="https://github.com/alanstevens/KickAssVim/raw/master/KickAssVim-logo.png" width=200>

Kick Ass Vim is a turn-key configuration for the [Vim](http://www.vim.org) editor. KickAssVim runs on all major platforms:
* [Windows](#windows)
* [Mac](#mac)
* [Linux](#ubuntu-linux)

See the list of included [plugins](https://github.com/alanstevens/KickAssVim/blob/master/plugins.vim).

Kick Ass Vim relies on [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) for autocompletion.

For best compatability, grab a font from [Nerd Fonts](http://nerdfonts.com/). I use [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Hack.zip).

The most common customizations (leader, font, colors, indenting) are in `~/.vim/vimrc`

# Installation:

## Windows

All commands should be run in an administrator shell. You will need to restart your shell for new paths to take effect.

### Prerequisites
* Visual Studio 2017: [Community Edition](https://www.visualstudio.com/free-developer-offers/) is free.
  * Include *C++ for desktop development* to get the compiler tools.
* Install [Chocolatey](https://chocolatey.org/) and restart your shell (as administrator).
* Vim: `choco install vim`
* Ruby: `choco install ruby`
* Node: `choco install nodejs`
* The Silver Searcher `choco install ag`
* cmake: `choco install cmake`
* make: `choco install make`
* ctags: `choco install ctags`
* Python2: `choco install python2`
* curl: `choco install curl`
* .NET Framework 3.5: `choco install dotnet3.5`
* rake: `gem install rake`

### Adjust Paths

* Download [gtools](http://www.p-nand-q.com/download/gtools/gtools-current.exe)
* Run the gtools installer as *administrator*
* use pathed to add pathed to your path. (Oooh, recursive):
```
"C:\Program Files (x86)\p-nand-q.com\GTools\pathed.exe" /append "C:\Program Files (x86)\p-nand-q.com\GTools" /user
```
* Restart your shell as administrator.
* cmake: `pathed /append "C:\Program Files\CMake\bin" /user`
* tsserver: `pathed /append %userprofile%\AppData\Roaming\npm /user`
* MSBuild: `pathed /append "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin" /user`
  * *OR* if you are using the community edition of Visual Studio:
  * `pathed /append "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin" /user`
* restart your shell as administrator

### Install
```
git clone git@github.com:alanstevens/KickAssVim.git %userprofile%\vimfiles
cd %userprofile%\vimfiles
rake
```
***

## Mac

Consider installing the [ThoughtBot Laptop Script](https://github.com/thoughtbot/laptop)

### Prerequisites

* xCode command line tools: `xcode-select --install`
* [Homebrew](https://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* Vim: `brew install vim`
* MacVim: `brew cask install macvim`
* Ruby: `brew install ruby`
* Rake: `gem install rake`
* Nodejs: `brew install node`
* [Mono](http://www.mono-project.com/): `brew install mono` (*for c# autocompletion*)
* ctags: `brew install ctags`
* cmake: `brew install cmake`
* python headers: `brew install python-dev`
* curl: `brew install curl`

### Install
```
git clone git@github.com:alanstevens/KickAssVim.git ~/.vim
cd ~/.vim
rake
```
***
## Ubuntu Linux
### Prerequisites
* gvim: `sudo apt install vim-gtk`
* Vim 8 on Windows subsystem for Linux:
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```
* Mono (for C# autocompletion)
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831E
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel
```
* ruby: `sudo apt install ruby-all-dev`
* python headers: `sudo apt install python-dev`
* The Silver Searcher: `sudo apt install silversearcher-ag`
* Node:
    * Remove legacy package: `sudo apt--purge remove node`
    * nodejs: `sudo apt install nodejs`
    * If `which node` doesn't return a value, make sure the node command is available: `sudo ln -s 'which nodejs' /usr/bin/node`
* npm: `sudo apt install npm`
* curl: `sudo apt install curl`
* Cmake: `sudo apt install build-essential cmake`
* Ctags: `sudo apt install ctags`
* Rake: `gem install rake --no-ri --no-rdoc`
* Ruby file utils: `gem install file-utils --no-ri --no-rdoc`
### Install
```
git clone git@github.com:alanstevens/KickAssVim.git ~/.vim
cd ~/.vim
sudo rake
```

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
* For typescript ctags support, edit or create `~/.ctags` and add the values here:
  https://github.com/majutsushi/tagbar/wiki#typescript

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`.

3. Install a font from [NerdFonts][] My default is [hack][] I just install the regular [mono font][].

6. The most common customizations (leader, font, colors, indenting) are in vimrc.

[Vim]: http://www.vim.org
[Duwanis]: https://github.com/duwanis/vim_config
[Carlhuda]: http://github.com/carlhuda/janus
[Akitaonrails]: https://github.com/akitaonrails/vimfiles
[NerdFonts]: http://nerdfonts.com/
[hack]: https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hack.zip
[mono font]: https://github.com/alanstevens/KickAssVim/blob/master/fonts/Hack/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

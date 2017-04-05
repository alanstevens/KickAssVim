# Kick Ass Vim

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim][] editor originally inspired by the Vim configurations of [Duwanis][], [Carlhuda][] and
[Akitaonrails][].

Kick Ass Vim is currently only tested on MacOS.

Prerequisites:
* Ruby and rake
* node and npm

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`.

3. Install a font from [NerdFonts][] My default is [hack][] I just install the regular [mono font][].

4. In your vim configuration, add the following: `set guifont=Knack\ Nerd\ Font:h16` or similar.

5. Set your terminal font the same to get nerd font support

[Vim]: http://www.vim.org
[Duwanis]: https://github.com/duwanis/vim_config
[Carlhuda]: http://github.com/carlhuda/janus
[Akitaonrails]: https://github.com/akitaonrails/vimfiles
[NerdFonts]: http://nerdfonts.com/
[hack]: https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hack.zip
[mono font]: https://github.com/alanstevens/KickAssVim/blob/master/fonts/Hack/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

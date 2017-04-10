# Kick Ass Vim

### A kick ass Vim development environment.

Kick Ass Vim is a turn-key configuration for the [Vim][] editor originally inspired by the Vim configurations of [Duwanis][], [Carlhuda][] and [Akitaonrails][].

Kick Ass Vim is currently only tested on MacOS.

Prerequisites:
* Ruby and rake
* node and npm
* `brew install ctags`
* You will need to edit/create `~/.ctags` and add the values here:
  https://github.com/majutsushi/tagbar/wiki#typescript
* Neocomplete requires vim be compiled with Lua support. MacVim has it on by default.
  You can test if your Vim has lua support with `:echo has("lua")`
* Denite requires python3. Try `:echo has('python3')` to see if your build supports it. My test of the latest MacVim was negative.
* `brew instal python3`
* `brew install --HEAD macvim-dev/macvim/macvim --with-properly-linked-python2-python3` or
* `rm -rf /Applications/MacVim.app`
  `cp -r /usr/local/Cellar/macvim/HEAD-23c70e0/MacVim.app /Applications/`
(unfortunately, you'll have to substitue the current head commit for macvim-dev until dev gets merged into master)
* For neovim support: `pip3 install neovim`

If you use terminal Vim, as I do, you'll need to compile a compatible
version with `brew install vim --with-lua --with-python3`

Installation:
1. Clone this repository: `git clone git@github.com:alanstevens/KickAssVim.git ~/.vim`

2. Install all plugins and dependencies: cd into `~/.vim` and run `rake`.

3. Install a font from [NerdFonts][] My default is [hack][] I just install the regular [mono font][].

4. In your vim configuration, add the following: `set guifont=Knack\ Nerd\ Font:h16` or similar.

5. Set your terminal font the same to get nerd font support in terminal Vim.

[Vim]: http://www.vim.org
[Duwanis]: https://github.com/duwanis/vim_config
[Carlhuda]: http://github.com/carlhuda/janus
[Akitaonrails]: https://github.com/akitaonrails/vimfiles
[NerdFonts]: http://nerdfonts.com/
[hack]: https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hack.zip
[mono font]: https://github.com/alanstevens/KickAssVim/blob/master/fonts/Hack/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

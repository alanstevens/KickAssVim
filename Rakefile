
def install_pathogen
  dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
  FileUtils.mkdir_p(dir) unless File.exists?(dir)
  sh "curl -LSso #{dir}/pathogen.vim https://tpo.pe/pathogen.vim"
end

install_pathogen

def Bundle(repo)
  name = File.basename(repo)
  cwd = File.expand_path("../", __FILE__)
  dir = File.expand_path("#{cwd}/bundle/#{name}")

  namespace(name) do
    task :install do
      unless File.exist?(dir)
        sh "git clone git://github.com/#{repo}.git \"#{dir}\""
      else
        Dir.chdir dir do
          sh "git pull"
        end
      end
    end
  end

  task name do
    puts
    puts "*" * 42
    puts "*#{"Installing #{name}".center(40)}*"
    puts "*" * 42
    puts
    Rake::Task["#{name}:install"].invoke
  end
  task :default => name
end

at_exit do
    cwd = File.expand_path("../", __FILE__)
    dir = File.expand_path("#{cwd}/bundle/tern_for_vim")
    Dir.chdir dir do
        sh "npm install"
    end

    dir = File.expand_path("#{cwd}/bundle/YouCompleteMe")
    Dir.chdir dir do
        sh "git submodule update --init --recursive" # this takes an eternity
        sh "./install.py --tern-completer"
    end
    dir = File.expand_path("#{cwd}/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime")
    Dir.chdir dir do
        sh "npm install --production && npm install -g typescript"
    end
end

# Colors
Bundle "wgibbs/vim-irblack"
Bundle "twerth/ir_black"
Bundle "croaky/vim-colors-github"
Bundle "nelstrom/vim-mac-classic-theme"
Bundle "vim-scripts/pyte"
Bundle "vim-scripts/Colour-Sampler-Pack"
Bundle "chriskempson/base16-vim"
Bundle "Lokaltog/vim-distinguished"
Bundle "altercation/vim-colors-solarized"

# Plugins
# For whatever reason, sensible broke javascript editing.
# I commented the line "filetype plugin indent on" and added sensible.vim directly to my config
# Bundle "tpope/vim-sensible"
Bundle "pangloss/vim-javascript"                  # Vastly improved Javascript indentation and syntax support in Vim. provides syntax highlighting and improved indentation
# Bundle 'jelera/vim-javascript-syntax'           # Enhanced JavaScript Syntax for Vim
Bundle 'othree/javascript-libraries-syntax.vim' # Syntax file for JavaScript libraries.
Bundle "elzr/vim-json"                          # A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
Bundle "ternjs/tern_for_vim"                    #  provides Tern-based JavaScript editing support.  It will hook into omni completion to handle autocompletion
Bundle "burnettk/vim-angular"                   # Some niceties for using Vim with the AngularJS framework
Bundle "mmalecki/vim-node.js"
Bundle "wookiehangover/jshint.vim"
Bundle "jimmyhchan/dustjs.vim"                  # dustjs template syntax highlighting and more for vim
Bundle "Valloric/YouCompleteMe"                 # a fast, as-you-type, fuzzy-search code completion engine
Bundle "mileszs/ack.vim"                        # like grep but better. Currently used with Ag, if available
Bundle "vim-airline/vim-airline"                # lean & mean statusline for vim that's light as air
Bundle "vim-airline/vim-airline-themes"         # https://github.com/vim-airline/vim-airline/wiki/Screenshots
Bundle "jeetsukumaran/vim-buffergator"          # list, select and switch between buffers.
Bundle "duff/vim-bufonly"                       # quickly close all other buffers
Bundle "scrooloose/syntastic"                   # syntax error checking
Bundle "scrooloose/nerdtree"                    # provides a file system tree view
Bundle "jistr/vim-nerdtree-tabs"                # NERDTree and tabs together in Vim, painlessly
Bundle "ryanoasis/vim-devicons"                 # Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
Bundle "vim-scripts/tComment"                   # easy to use, file-type sensible comments for Vim. It can handle embedded syntax.
Bundle "sjl/vitality.vim"                       # Make Vim play nicely with iTerm 2 and tmux. Enables a thin cursor while in insert mode in console vim
Bundle 'ctrlpvim/ctrlp.vim'                     # Full path fuzzy file, buffer, mru, tag, ... finder
Bundle "Chiel92/vim-autoformat"                 # Provides easy code formatting in Vim by integrating existing code formatters.

# Learn to use these
# Bundle 'junegunn/vim-easy-align'                # Makes those funny alignment issues trivial.
# Bundle "vim-ruby/vim-ruby"
# Bundle "sjl/gundo.vim"                          # provides an undo graph window
# Bundle "Xuyuanp/nerdtree-git-plugin"            # A plugin of NERDTree showing git status flags.
# Bundle "tiagofumo/vim-nerdtree-syntax-highlight" # Extra syntax and highlight for nerdtree files
# Bundle "tpope/vim-surround"                     # all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
# Bundle "tpope/vim-unimpaired"                   # pairs of handy bracket mappings
# Bundle "Raimondi/delimitMate"                   # provides insert mode auto-completion for quotes, parens, brackets, etc.
# Bundle "vim-scripts/YankRing.vim"               # provides a yank buffer history
# Bundle "vim-scripts/ZoomWin"                    # enables temporary full screen for a viewport
# Bundle "Lokaltog/vim-easymotion"                # Vim motions on speed!
# Bundle 'PeterRincker/vim-argumentative'         # Allows you to change the order of arguments with ease.

# TODO: sort out which of these work
# Bundle "tpope/vim-markdown"
# Bundle "nelstrom/vim-markdown-preview"
# Bundle "mkitt/markdown-preview.vim"           # Preview markdown files in the browser from vim (requires redcarpet gem)
# Bundle "jtratner/vim-flavored-markdown"

# Bundle "chrisbra/csv.vim"
# Bundle Shougo/denite.nvim                     # like the fuzzy finder, but it is more generic. (for neovim)
# Bundle 'helino/vim-json'
# Bundle "rking/ag.vim"                         # depricated
# Seems to be abandoned: Bundle 'walm/jshint.vim'
# Bundle "vim-scripts/ctags.vim"
# Bundle "majutsushi/tagbar"                    # displays a list of ctags in a sidebar
# Bundle "vim-scripts/matchit.zip"
# Bundle "MarcWeber/vim-addon-mw-utils"         # (snipmate dependency) interpret a file by function and cache file automatically
# Bundle "danro/rename.vim"
# Bundle "tpope/vim-repeat"
# Bundle "airblade/vim-rooter"
# Bundle "godlygeek/tabular"                    # text filtering and alignment
# Bundle "maba/vim-markdown-preview"            # can't get this one to work.

# sh "gem install bundle"
# sh "bundle install"

# tpope plugins
# ----------------------------
# Bundle "tpope/vim-abolish"                  # easily search for, substitute, and abbreviate multiple variants of a word
# Bundle 'tpope/vim-commentary'
# Bundle 'tpope/vim-dispatch'
# Bundle 'tpope/vim-endwise'
# Bundle 'tpope/vim-eunuch'
# Bundle 'tpope/vim-fireplace'
# Bundle 'tpope/vim-fugitive'
# Bundle 'tpope/vim-leiningen'
# Bundle 'tpope/vim-projectionist'
# Bundle 'tpope/vim-ragtag'
# Bundle 'tpope/vim-sexp-mappings-for-regular-people'
# Bundle 'tpope/vim-sleuth'
# Bundle 'tpope/vim-vinegar'

# Javascript plugins
# http://oli.me.uk/2015/06/17/wrangling-javascript-with-vim/
# Olical/vim-enmasse – My own, allows you to edit your quickfix list and write the changes to their files. Like find and replace, but better.
# mhinz/vim-signify – Git info in the gutter.

# Plugings from https://github.com/Olical/dotfiles/blob/9c5f008620287bb495e56452123d6bff76bb4639/vim/.vim/plugins.vim
# --------------------------------------
# Bundle 'FelikZ/ctrlp-py-matcher'
# Bundle 'Keithbsmiley/tmux.vim'
# Bundle 'SirVer/ultisnips'
# Bundle 'Wolfy87/vim-expand'
# Bundle 'Wolfy87/vim-syntax-expand'
# Bundle 'adimit/prolog.vim'
# Bundle 'aklt/plantuml-syntax'
# Bundle 'andreimaxim/vim-io'
# Bundle 'derekwyatt/vim-scala'
# Bundle 'embear/vim-localvimrc'
# Bundle 'guns/vim-clojure-highlight'
# Bundle 'guns/vim-clojure-static'
# Bundle 'guns/vim-sexp'
# Bundle 'haya14busa/incsearch.vim'
# Bundle 'haya14busa/vim-asterisk'
# Bundle 'nathanaelkane/vim-indent-guides'
# Bundle 'raymond-w-ko/vim-niji'
# Bundle 'sevko/vim-nand2tetris-syntax'
# Bundle 'terryma/vim-multiple-cursors'


# Bundle "tpope/vim-git"
# Bundle "nono/vim-handlebars"
# Bundle "itspriddle/vim-jquery"
# Bundle "groenewege/vim-less"
# Bundle "cakebaker/scss-syntax.vim"
# Bundle "vim-scripts/Arduino-syntax-file"
# Bundle "guns/vim-clojure-static"
# Bundle "kchmck/vim-coffee-script"
# Bundle "tpope/vim-cucumber"
# Bundle "elixir-lang/vim-elixir"
# Bundle "jnwhiteh/vim-golang"
# Bundle "tpope/vim-haml"
# Bundle "wlangstroth/vim-haskell"
# Bundle "juvenn/mustache.vim"
# Bundle "sunaku/vim-ruby-minitest"           # Vim highlighting & completion for MiniTest.
# Bundle "ecomba/vim-ruby-refactoring"      # Refactoring tool for Ruby in vim!
# Bundle "ajf/puppet-vim"
# Bundle "tpope/vim-rails"
# Bundle "tpope/vim-rake"
# Bundle "rosstimson/scala-vim-support"
# Bundle "timcharper/textile.vim"
# Bundle "slim-template/vim-slim"              # slim syntax highlighting for vim
# Bundle "nanki/treetop.vim"
# Bundle "jimenezrick/vimerl"

# Bundle "Townk/vim-autoclose"                # automatically closes quotes, parens, brackets, etc
# Bundle "bonsaiben/bootstrap-snippets"         # Twitter Bootstrap snippets for vim-snipmate
# Bundle "vim-scripts/bufexplorer.zip"
# Bundle "tpope/vim-bundler"                    # Lightweight support for Ruby's Bundler
# Bundle "vim-scripts/camelcasemotion"
# Bundle "vim-scripts/dbext.vim"
# Bundle "vim-scripts/greplace.vim"
# Bundle "henrik/vim-indexed-search"
# Bundle "hallettj/jslint.vim"
# REPOSITORY IS GONE Bundle "tsaleh/vim-matchit"
# Bundle "ddollar/nerdcommenter"              # easy syntax appropriate commenting
# Bundle "greyblake/vim-preview"
# Bundle "tpope/vim-rbenv"
# Bundle "drewolson/ruby_focused_unit_test_vim" # run a focused ruby unit test in vim
# Bundle "vim-scripts/ruby-matchit"
# Bundle "csexton/rvm.vim"
# Bundle "vim-scripts/searchfold.vim"
# Bundle "vim-scripts/simplefold"
# Bundle "hallison/vim-ruby-sinatra"
# Bundle "garbas/vim-snipmate"
# Bundle "honza/vim-snippets"                   # additional snippits to use with snipmate
# Replaced by YouCompleteMe # Bundle "ervandew/supertab"                    # Perform all your vim insert mode completions with Tab
# Bundle "vim-scripts/TailMinusF"
# Bundle "kana/vim-textobj-user"
# Bundle "thinca/vim-textobj-comment"
# Bundle "nelstrom/vim-textobj-rubyblock"
# Bundle "tomtom/tlib_vim"                      # (snipmate dependency) Some utility functions for VIM
# Bundle "SirVer/ultisnips"                   # code snipped engine. ships with some templates
# Bundle "Raimondi/vimoutliner"
# Bundle "skalnik/vim-vroom"                    # A vim plugin for running your Ruby tests
# Bundle "mattn/zencoding-vim"

# plugins used by Janus:
# Bundle "ap/vim-css-color"
# Bundle "michaeljsmith/vim-indent-object"
# Bundle "rgarver/Kwbd.vim"
# Bundle "chrisbra/NrrwRgn"
# Bundle "terryma/vim-multiple-cursors"
# Bundle "skalnik/vim-vroom"

# plugins used by neo:
# Bundle "harleypig/vcscommand.vim"
# Bundle "vim-scripts/L9"
# Bundle "michaeljsmith/vim-indent-object"
# Bundle "wavded/vim-stylus"
# Bundle "digitaltoad/vim-jade"
# Bundle "vim-scripts/VimClojure"
# Bundle "skammer/vim-css-color"
# Use Aaron Baker's Fork to add SASS/SCSS color highlighting
# Bundle "bakis2011/vim-css-color"

# plugins used by spf13:
# Bundle 'amirh/HTML-AutoCloseTag'            # Automatically closes HTML tags once you finish typing them.
# Bundle 'hail2u/vim-css3-syntax'             # Add CSS3 syntax support to vim's built-in `syntax/css.vim`.
# Bundle 'godlygeek/csapprox'                 # Make gvim-only colorschemes work transparently in terminal vim
# Bundle 'briancollins/vim-jst'               # for highlighting and indenting JST/EJS syntax
# Bundle 'spf13/PIV'                          # PHP Integration environment for Vim
# Bundle 'arnaud-lb/vim-php-namespace'        # types "use" statements for you
# Bundle 'mattn/webapi-vim'
# Bundle 'vim-scripts/restore_view.vim'       # automatically restoring file's cursor position and folding
# Bundle 'myusuf3/numbers.vim'                # intelligently toggling line numbers between relative numbering (relativenumber) and absolute numbering (number)
# Bundle 'airblade/vim-gitgutter'             # shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed.
# Bundle 'vim-scripts/sessionman.vim'         # session manager

# plugins used by yadr
# " Ruby, Rails, Rake...
# Bundle "astashov/vim-ruby-debugger"
# Bundle "ecomba/vim-ruby-refactoring"
# Bundle "skwp/vim-ruby-conque"
# Bundle "tpope/vim-rvm"
# Bundle "vim-scripts/Specky"
# Bundle "ck3g/vim-change-hash-syntax"
#
# " Html, Xml, Css, Markdown...
# Bundle "aaronjensen/vim-sass-status"
# Bundle "claco/jasmine.vim"
# Bundle "digitaltoad/vim-jade"
# Bundle "kogakure/vim-sparkup"
# Bundle "skwp/vim-html-escape"
# Bundle "wavded/vim-stylus"
#
# " Git related...
# Bundle "gregsexton/gitv"
# Bundle "mattn/gist-vim"
# Bundle "skwp/vim-git-grep-rails-partial"
# Bundle "tjennings/git-grep-vim"
#
# " General text editing improvements...
# Bundle "AndrewRadev/splitjoin.vim"
# Bundle "Shougo/neocomplcache"
# Bundle "briandoll/change-inside-surroundings.vim"
# Bundle "nelstrom/vim-visual-star-search"
# Bundle "skwp/vim-easymotion"
# Bundle "vim-scripts/IndexedSearch"
# Bundle "terryma/vim-multiple-cursors"
#
# " General vim improvements
# Bundle "bogado/file-line"
# Bundle "mattn/webapi-vim"
# Bundle "skwp/greplace.vim"
# Bundle "skwp/vim-conque"
# Bundle "vim-scripts/AnsiEsc.vim"
# Bundle "vim-scripts/AutoTag"
# Bundle "vim-scripts/lastpos.vim"
# Bundle "vim-scripts/sudo.vim"
# Bundle "xsunsmile/showmarks"
#
# " Text objects
# Bundle "austintaylor/vim-indentobject"
# Bundle "bootleq/vim-textobj-rubysymbol"
# Bundle "coderifous/textobj-word-column.vim"
# Bundle "kana/vim-textobj-datetime"
# Bundle "kana/vim-textobj-entire"
# Bundle "kana/vim-textobj-function"
# Bundle "kana/vim-textobj-user"
# Bundle "lucapette/vim-textobj-underscore"
# Bundle "nathanaelkane/vim-indent-guides"
# Bundle "nelstrom/vim-textobj-rubyblock"
# Bundle "thinca/vim-textobj-function-javascript"
# Bundle "vim-scripts/argtextobj.vim"
#
# " Cosmetics, color scheme, Powerline...
# Bundle "chrisbra/color_highlight"
# Bundle "vim-scripts/TagHighlight"
# Bundle "bogado/file-line"

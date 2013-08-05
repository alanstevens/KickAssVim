
def install_pathogen
  dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
  FileUtils.mkdir_p(dir) unless File.exists?(dir)
  sh "curl -Ssko #{dir}/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
end

def install_sensible
  dir = File.expand_path "#{File.expand_path("../", __FILE__)}/config"
  FileUtils.mkdir_p(dir) unless File.exists?(dir)
  sh "curl -Ssko #{dir}/sensible.vim https://raw.github.com/tpope/vim-sensible/master/plugin/sensible.vim"
end

def install_plugin(repo)
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
    puts "*" * 40
    puts "*#{"Installing #{name}".center(38)}*"
    puts "*" * 40
    puts
    Rake::Task["#{name}:install"].invoke
  end
  task :default => name
end

install_pathogen
install_sensible

# Colors
install_plugin "larssmit/vim-getafe"
install_plugin "croaky/vim-colors-github"
install_plugin "twerth/ir_black"
install_plugin "nelstrom/vim-mac-classic-theme"
install_plugin "vim-scripts/pyte"
install_plugin "vim-scripts/Colour-Sampler-Pack"
install_plugin "altercation/vim-colors-solarized"
install_plugin "wgibbs/vim-irblack"
install_plugin "chriskempson/base16-vim"

# Languages
# install_plugin "vim-scripts/Arduino-syntax-file"
# install_plugin "guns/vim-clojure-static"
install_plugin "kchmck/vim-coffee-script"
install_plugin "chrisbra/csv.vim"
install_plugin "tpope/vim-cucumber"
# install_plugin "elixir-lang/vim-elixir"
install_plugin "tpope/vim-git"
# install_plugin "jnwhiteh/vim-golang"
install_plugin "tpope/vim-haml"
install_plugin "nono/vim-handlebars"
# install_plugin "wlangstroth/vim-haskell"
install_plugin "pangloss/vim-javascript"
install_plugin "itspriddle/vim-jquery"
install_plugin "groenewege/vim-less"
install_plugin "tpope/vim-markdown"
install_plugin "maba/vim-markdown-preview"
install_plugin "juvenn/mustache.vim"
install_plugin "sunaku/vim-ruby-minitest"
# install_plugin "ajf/puppet-vim"
install_plugin "tpope/vim-rails"
install_plugin "tpope/vim-rake"
# install_plugin "rosstimson/scala-vim-support"
install_plugin "cakebaker/scss-syntax.vim"
install_plugin "timcharper/textile.vim"
install_plugin "mmalecki/vim-node.js"
install_plugin "vim-ruby/vim-ruby"
install_plugin "slim-template/vim-slim" # slim syntax highlighting for vim
install_plugin "nanki/treetop.vim"
install_plugin "jimenezrick/vimerl"

# Plugins
# install_plugin "tpope/vim-abolish"
install_plugin "mileszs/ack.vim" # like grep but better. Currently used with Ag, if available
install_plugin "bling/vim-airline" # lean & mean statusline for vim that's light as air
# install_plugin "Townk/vim-autoclose"
install_plugin "Chiel92/vim-autoformat" # Provides easy code formatting in Vim by integrating existing code formatters.
install_plugin "bonsaiben/bootstrap-snippets" # Twitter Bootstrap snippets for vim-snipmate
# install_plugin "vim-scripts/bufexplorer.zip"
install_plugin "jeetsukumaran/vim-buffergator" # list, select and switch between buffers.
install_plugin "duff/vim-bufonly" # quickly close all other buffers
install_plugin "tpope/vim-bundler" # Lightweight support for Ruby's Bundler
# install_plugin "vim-scripts/camelcasemotion"
install_plugin "vim-scripts/ctags.vim"
install_plugin "kien/ctrlp.vim" # quick search window
# install_plugin "vim-scripts/dbext.vim"
install_plugin "Raimondi/delimitMate" # provides insert mode auto-completion for quotes, parens, brackets, etc.
install_plugin "Lokaltog/vim-easymotion" # Vim motions on speed!
install_plugin "tpope/vim-endwise"
install_plugin "tpope/vim-fugitive"
# install_plugin "vim-scripts/greplace.vim"
install_plugin "sjl/gundo.vim" # provides an undo graph window
# install_plugin "henrik/vim-indexed-search"
# install_plugin "hallettj/jslint.vim"
install_plugin "tsaleh/vim-matchit"
install_plugin "MarcWeber/vim-addon-mw-utils" # (snipmate dependency) interpret a file by function and cache file automatically
# install_plugin "ddollar/nerdcommenter" # easy syntax appropriate commenting
install_plugin "scrooloose/nerdtree" # provides a file system tree view
install_plugin "jistr/vim-nerdtree-tabs" # NERDTree and tabs together in Vim, painlessly
# install_plugin "greyblake/vim-preview"
# install_plugin "tpope/vim-ragtag"
install_plugin "danro/rename.vim"
install_plugin "tpope/vim-repeat"
install_plugin "tpope/vim-rbenv"
install_plugin "drewolson/ruby_focused_unit_test_vim" # run a focused ruby unit test in vim
install_plugin "vim-scripts/ruby-matchit"
# install_plugin "csexton/rvm.vim"
# install_plugin "vim-scripts/searchfold.vim"
# install_plugin "vim-scripts/simplefold"
# install_plugin "hallison/vim-ruby-sinatra"
install_plugin "garbas/vim-snipmate"
install_plugin "honza/vim-snippets" # additional snippits to use with snipmate
install_plugin "ervandew/supertab" # Perform all your vim insert mode completions with Tab
install_plugin "tpope/vim-surround"
install_plugin "scrooloose/syntastic" # syntax error checking
install_plugin "godlygeek/tabular" # text filtering and alignment
install_plugin "majutsushi/tagbar" # displays a list of ctags in a sidebar
# install_plugin "vim-scripts/TailMinusF"
install_plugin "vim-scripts/tComment"
install_plugin "kana/vim-textobj-user"
# install_plugin "thinca/vim-textobj-comment"
install_plugin "nelstrom/vim-textobj-rubyblock"
install_plugin "tomtom/tlib_vim" # (snipmate dependency) Some utility functions for VIM
# install_plugin "SirVer/ultisnips" # code snipped engine. ships with some templates
install_plugin "tpope/vim-unimpaired" # pairs of handy bracket mappings
# install_plugin "Raimondi/vimoutliner"
install_plugin "sjl/vitality.vim" # enables a thin cursor while in insert mode in console vim
install_plugin "vim-scripts/YankRing.vim" # provides a yank buffer history
# install_plugin "mattn/zencoding-vim"
install_plugin "vim-scripts/ZoomWin" # enables temporary full screen for a viewport

# plugins used by Janus:
# ap/vim-css-color
# tpope/vim-dispatch
# michaeljsmith/vim-indent-object
# rgarver/Kwbd.vim
# tpope/vim-eunuch
# chrisbra/NrrwRgn
# terryma/vim-multiple-cursors
# skalnik/vim-vroom

# plugins used by neo:
#  Bundle "git://github.com/harleypig/vcscommand.vim"
#  Bundle "git://github.com/vim-scripts/L9"
#  Bundle "git://github.com/michaeljsmith/vim-indent-object"
#  Bundle "git://github.com/wavded/vim-stylus"
# Bundle "git://github.com/digitaltoad/vim-jade"
# Bundle "https://github.com/vim-scripts/VimClojure"
#  " Bundle git://github.com/skammer/vim-css-color
#  " Use Aaron Baker's Fork to add SASS/SCSS color highlighting
#  Bundle "git@github.com:bakis2011/vim-css-color"

# plugins used by yadr
# " Ruby, Rails, Rake...
# Bundle "astashov/vim-ruby-debugger"
# Bundle "ecomba/vim-ruby-refactoring"
# Bundle "skwp/vim-ruby-conque"
# Bundle "tpope/vim-rvm"
# Bundle "vim-scripts/Specky"
# Bundle "ck3g/vim-change-hash-syntax"
#
# " Other languages
# Bundle "briancollins/vim-jst"
#
# " Html, Xml, Css, Markdown...
# Bundle "aaronjensen/vim-sass-status"
# Bundle "claco/jasmine.vim"
# Bundle "digitaltoad/vim-jade"
# Bundle "jtratner/vim-flavored-markdown"
# Bundle "kogakure/vim-sparkup"
# Bundle "nelstrom/vim-markdown-preview"
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
# Bundle "Raimondi/delimitMate"
# Bundle "Shougo/neocomplcache"
# Bundle "briandoll/change-inside-surroundings.vim"
# Bundle "nelstrom/vim-visual-star-search"
# Bundle "skwp/vim-easymotion"
# Bundle "vim-scripts/IndexedSearch"
# Bundle "vim-scripts/matchit.zip"
# Bundle "terryma/vim-multiple-cursors"
#
# " General vim improvements
# Bundle "bogado/file-line"
# Bundle "mattn/webapi-vim"
# Bundle "rking/ag.vim"
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

def install_pathogen
  dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
  FileUtils.mkdir_p(dir) unless File.exists?(dir)
  sh "curl -Ssko #{dir}/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
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

# plugins used by Janus
# ap/vim-css-color
# jeetsukumaran/vim-buffergator
# tpope/vim-dispatch
# sjl/gundo.vim
# michaeljsmith/vim-indent-object
# rgarver/Kwbd.vim
# tpope/vim-eunuch
# chrisbra/NrrwRgn
# terryma/vim-multiple-cursors
# skalnik/vim-vroom

install_pathogen

# Colors
install_plugin "larssmit/vim-getafe"
install_plugin "croaky/vim-colors-github"
install_plugin "twerth/ir_black"
install_plugin "nelstrom/vim-mac-classic-theme"
install_plugin "vim-scripts/pyte"
install_plugin "vim-scripts/Colour-Sampler-Pack"
install_plugin "altercation/vim-colors-solarized"

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
install_plugin "tpope/vim-markdown"
# install_plugin "sunaku/vim-ruby-minitest"
# install_plugin "ajf/puppet-vim"
install_plugin "tpope/vim-rails"
install_plugin "alanstevens/vim-rspec"
# install_plugin "rosstimson/scala-vim-support"
install_plugin "cakebaker/scss-syntax.vim"
install_plugin "timcharper/textile.vim"
install_plugin "mmalecki/vim-node.js"
install_plugin "vim-ruby/vim-ruby"
install_plugin "nanki/treetop.vim"
install_plugin "jimenezrick/vimerl"

# Plugins
# install_plugin "tpope/vim-abolish"
install_plugin "mileszs/ack.vim" # like grep but better. Currently used with Ag
# install_plugin "Townk/vim-autoclose"
install_plugin "vim-scripts/bufexplorer.zip"
install_plugin "duff/vim-bufonly" # quickly close all other buffers
install_plugin "tpope/vim-bundler"
# install_plugin "vim-scripts/camelcasemotion"
install_plugin "vim-scripts/ctags.vim"
install_plugin "kien/ctrlp.vim" # quick search window
# install_plugin "vim-scripts/dbext.vim"
install_plugin "Lokaltog/vim-easymotion"
install_plugin "tpope/vim-endwise"
install_plugin "tpope/vim-fugitive"
install_plugin "vim-scripts/greplace.vim"
# install_plugin "henrik/vim-indexed-search"
install_plugin "hallettj/jslint.vim"
install_plugin "tsaleh/vim-matchit"
install_plugin "ddollar/nerdcommenter" # easy syntax appropriate commenting
install_plugin "scrooloose/nerdtree" # provides a file system tree view
# install_plugin "greyblake/vim-preview" # Changed markdown preview to preview
# install_plugin "tpope/vim-ragtag"
install_plugin "danro/rename.vim"
install_plugin "tpope/vim-repeat"
install_plugin "csexton/rvm.vim"
# install_plugin "vim-scripts/searchfold.vim"
# install_plugin "vim-scripts/simplefold"
# install_plugin "hallison/vim-ruby-sinatra"
install_plugin "honza/vim-snippets" # additional snippits to use with ultisnips
# install_plugin "ervandew/supertab"
install_plugin "tpope/vim-surround"
install_plugin "scrooloose/syntastic" # syntax error checking
install_plugin "vim-scripts/taglist.vim" # displays a list of ctags in a viewport
# install_plugin "vim-scripts/TailMinusF"
install_plugin "vim-scripts/tComment"
# install_plugin "kana/vim-textobj-user"
# install_plugin "thinca/vim-textobj-comment"
# install_plugin "nelstrom/vim-textobj-rubyblock"
install_plugin "SirVer/ultisnips" # code snipped engine. ships with some templates
# install_plugin "Raimondi/vimoutliner"
# install_plugin "tpope/vim-rake"
install_plugin "sjl/vitality.vim" # enables a thin cursor while in insert mode in console vim
install_plugin "chrismetcalf/vim-yankring" # provides a yank buffer history
install_plugin "mattn/zencoding-vim"
# install_plugin "alanstevens/zoomfont"
install_plugin "vim-scripts/ZoomWin" # enables temporary full screen for a viewport

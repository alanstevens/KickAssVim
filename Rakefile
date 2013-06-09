
module VIM
  if RUBY_PLATFORM.downcase.include?("mingw")
    system "ruby devkit.rb"
  end
end

def install_pathogen_task
  dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
  FileUtils.mkdir_p(dir) unless File.exists?(dir)
  sh "curl -Sso #{dir}/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
end

def install_plugin_task(repo)
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

install_pathogen_task

# Colors
install_plugin_task "larssmit/vim-getafe"
install_plugin_task "croaky/vim-colors-github"
install_plugin_task "twerth/ir_black"
install_plugin_task "nelstrom/vim-mac-classic-theme"
install_plugin_task "vim-scripts/pyte"
install_plugin_task "vim-scripts/Colour-Sampler-Pack"
install_plugin_task "altercation/vim-colors-solarized"

# Languages
# install_plugin_task "vim-scripts/Arduino-syntax-file"
# install_plugin_task "guns/vim-clojure-static"
install_plugin_task "kchmck/vim-coffee-script"
install_plugin_task "chrisbra/csv.vim"
install_plugin_task "tpope/vim-cucumber"
# install_plugin_task "elixir-lang/vim-elixir"
install_plugin_task "tpope/vim-git"
# install_plugin_task "jnwhiteh/vim-golang"
install_plugin_task "tpope/vim-haml"
install_plugin_task "nono/vim-handlebars"
# install_plugin_task "wlangstroth/vim-haskell"
install_plugin_task "pangloss/vim-javascript"
install_plugin_task "tpope/vim-markdown"
# install_plugin_task "sunaku/vim-ruby-minitest"
# install_plugin_task "ajf/puppet-vim"
install_plugin_task "tpope/vim-rails"
install_plugin_task "alanstevens/vim-rspec"
# install_plugin_task "rosstimson/scala-vim-support"
install_plugin_task "cakebaker/scss-syntax.vim"
install_plugin_task "timcharper/textile.vim"
install_plugin_task "mmalecki/vim-node.js"
install_plugin_task "vim-ruby/vim-ruby"
install_plugin_task "nanki/treetop.vim"
install_plugin_task "jimenezrick/vimerl"

# Plugins
# install_plugin_task "tpope/vim-abolish"
install_plugin_task "mileszs/ack.vim" # like grep but better. Currently used with Ag
# install_plugin_task "Townk/vim-autoclose"
install_plugin_task "vim-scripts/bufexplorer.zip"
install_plugin_task "duff/vim-bufonly" # quickly close all other buffers
install_plugin_task "tpope/vim-bundler"
# install_plugin_task "vim-scripts/camelcasemotion"
install_plugin_task "vim-scripts/ctags.vim"
install_plugin_task "kien/ctrlp.vim" # quick search window
# install_plugin_task "vim-scripts/dbext.vim"
install_plugin_task "Lokaltog/vim-easymotion"
install_plugin_task "tpope/vim-endwise"
install_plugin_task "tpope/vim-fugitive"
install_plugin_task "vim-scripts/greplace.vim"
# install_plugin_task "henrik/vim-indexed-search"
install_plugin_task "hallettj/jslint.vim"
install_plugin_task "tsaleh/vim-matchit"
install_plugin_task "ddollar/nerdcommenter" # easy syntax appropriate commenting
install_plugin_task "scrooloose/nerdtree" # provides a file system tree view
# install_plugin_task "greyblake/vim-preview" # Changed markdown preview to preview
# install_plugin_task "tpope/vim-ragtag"
install_plugin_task "danro/rename.vim"
install_plugin_task "tpope/vim-repeat"
install_plugin_task "csexton/rvm.vim"
# install_plugin_task "vim-scripts/searchfold.vim"
# install_plugin_task "vim-scripts/simplefold"
# install_plugin_task "hallison/vim-ruby-sinatra"
install_plugin_task "honza/vim-snippets" # additional snippits to use with ultisnips
# install_plugin_task "ervandew/supertab"
install_plugin_task "tpope/vim-surround"
install_plugin_task "scrooloose/syntastic" # syntax error checking
install_plugin_task "vim-scripts/taglist.vim" # displays a list of ctags in a viewport
# install_plugin_task "vim-scripts/TailMinusF"
install_plugin_task "vim-scripts/tComment"
# install_plugin_task "kana/vim-textobj-user"
# install_plugin_task "thinca/vim-textobj-comment"
# install_plugin_task "nelstrom/vim-textobj-rubyblock"
install_plugin_task "SirVer/ultisnips" # code snipped engine. ships with some templates
# install_plugin_task "Raimondi/vimoutliner"
# install_plugin_task "tpope/vim-rake"
install_plugin_task "sjl/vitality.vim" # enables a thin cursor while in insert mode in console vim
install_plugin_task "chrismetcalf/vim-yankring" # provides a yank buffer history
install_plugin_task "mattn/zencoding-vim"
# install_plugin_task "alanstevens/zoomfont"
install_plugin_task "vim-scripts/ZoomWin" # enables temporary full screen for a viewport

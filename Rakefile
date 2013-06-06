
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
  name = repo.split("/")[1].split(".")[0]
  cwd = File.expand_path("../", __FILE__)
  dir = File.expand_path("#{cwd}/bundle/#{name}")

  namespace(name) do
    task :install do
      unless File.exist?(dir)
        sh "git clone git://github.com/#{repo} \"#{dir}\""
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
# ap/vim-css-color.git
# jeetsukumaran/vim-buffergator.git
# tpope/vim-dispatch.git
# sjl/gundo.vim.git
# michaeljsmith/vim-indent-object.git
# rgarver/Kwbd.vim.git
# tpope/vim-eunuch.git
# chrisbra/NrrwRgn.git
# terryma/vim-multiple-cursors.git
# skalnik/vim-vroom.git

install_pathogen_task

# Colors
install_plugin_task "larssmit/vim-getafe.git"
install_plugin_task "croaky/vim-colors-github.git"
install_plugin_task "twerth/ir_black.git"
install_plugin_task "nelstrom/vim-mac-classic-theme.git"
install_plugin_task "vim-scripts/pyte.git"
install_plugin_task "vim-scripts/Colour-Sampler-Pack.git"
install_plugin_task "altercation/vim-colors-solarized.git"

# Languages
# install_plugin_task "vim-scripts/Arduino-syntax-file.git"
# install_plugin_task "guns/vim-clojure-static.git"
install_plugin_task "kchmck/vim-coffee-script.git"
install_plugin_task "chrisbra/csv.vim.git"
install_plugin_task "tpope/vim-cucumber.git"
# install_plugin_task "elixir-lang/vim-elixir.git"
install_plugin_task "tpope/vim-git.git"
# install_plugin_task "jnwhiteh/vim-golang.git"
install_plugin_task "tpope/vim-haml.git"
install_plugin_task "nono/vim-handlebars.git"
# install_plugin_task "wlangstroth/vim-haskell.git"
install_plugin_task "pangloss/vim-javascript.git"
install_plugin_task "tpope/vim-markdown.git"
# install_plugin_task "sunaku/vim-ruby-minitest.git"
# install_plugin_task "ajf/puppet-vim.git"
install_plugin_task "tpope/vim-rails.git"
install_plugin_task "alanstevens/vim-rspec.git"
# install_plugin_task "rosstimson/scala-vim-support.git"
install_plugin_task "cakebaker/scss-syntax.vim.git"
install_plugin_task "timcharper/textile.vim.git"
install_plugin_task "mmalecki/vim-node.js.git"
install_plugin_task "vim-ruby/vim-ruby.git"
install_plugin_task "nanki/treetop.vim.git"
install_plugin_task "jimenezrick/vimerl.git"

# Plugins
# install_plugin_task "tpope/vim-abolish.git"
install_plugin_task "mileszs/ack.vim.git" # like grep but better. Currently used with Ag
# install_plugin_task "alanstevens/Align.git"
# install_plugin_task "Townk/vim-autoclose.git"
install_plugin_task "vim-scripts/bufexplorer.zip.git"
install_plugin_task "duff/vim-bufonly.git" # quickly close all other buffers
install_plugin_task "tpope/vim-bundler.git"
# install_plugin_task "vim-scripts/camelcasemotion.git"
install_plugin_task "vim-scripts/ctags.vim.git"
install_plugin_task "kien/ctrlp.vim.git" # quick search window
# install_plugin_task "vim-scripts/dbext.vim.git"
install_plugin_task "Lokaltog/vim-easymotion.git"
install_plugin_task "tpope/vim-endwise.git"
install_plugin_task "tpope/vim-fugitive.git"
install_plugin_task "vim-scripts/greplace.vim.git"
# install_plugin_task "henrik/vim-indexed-search.git"
install_plugin_task "hallettj/jslint.vim.git"
install_plugin_task "tsaleh/vim-matchit.git"
install_plugin_task "ddollar/nerdcommenter.git" # easy syntax appropriate commenting
install_plugin_task "alanstevens/nerdtree.git" # provides a file system tree view
# install_plugin_task "greyblake/vim-preview.git" # Changed markdown preview to preview
# install_plugin_task "tpope/vim-ragtag.git"
install_plugin_task "danro/rename.vim.git"
install_plugin_task "tpope/vim-repeat.git"
install_plugin_task "csexton/rvm.vim.git"
# install_plugin_task "vim-scripts/searchfold.vim.git"
# install_plugin_task "vim-scripts/simplefold.git"
# install_plugin_task "hallison/vim-ruby-sinatra.git"
install_plugin_task "honza/vim-snippets.git" # additional snippits to use with ultisnips
# install_plugin_task "ervandew/supertab.git"
install_plugin_task "tpope/vim-surround.git"
install_plugin_task "scrooloose/syntastic.git" # syntax error checking
install_plugin_task "vim-scripts/taglist.vim.git" # displays a list of ctags in a viewport
# install_plugin_task "vim-scripts/TailMinusF.git"
install_plugin_task "vim-scripts/tComment.git"
# install_plugin_task "kana/vim-textobj-user.git"
# install_plugin_task "thinca/vim-textobj-comment.git"
# install_plugin_task "nelstrom/vim-textobj-rubyblock.git"
install_plugin_task "SirVer/ultisnips.git" # code snipped engine. ships with some templates
# install_plugin_task "Raimondi/vimoutliner.git"
# install_plugin_task "tpope/vim-rake.git"
install_plugin_task "sjl/vitality.vim.git" # enables a thin cursor while in insert mode in console vim
install_plugin_task "chrismetcalf/vim-yankring.git" # provides a yank buffer history
install_plugin_task "mattn/zencoding-vim.git"
# install_plugin_task "alanstevens/zoomfont.git"
install_plugin_task "vim-scripts/ZoomWin.git" # enables temporary full screen for a viewport

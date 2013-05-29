module VIM
  Dirs = %w[ autoload bundle ]
  if RUBY_PLATFORM.downcase.include?("mingw")
    system "ruby devkit.rb"
  end
end

VIM::Dirs.each do |dir|
  directory(dir)
end

def vim_plugin_task(name, repo=nil)
  cwd = File.expand_path("../", __FILE__)
  dir = File.expand_path("bundle/#{name}")
  subdirs = VIM::Dirs

  namespace(name) do
    if repo
      task :install => subdirs do
        if repo =~ /git$/
          unless File.exist?(dir)
            sh "git clone #{repo} \"#{dir}\""
          else
            Dir.chdir dir do
              sh "git pull"
            end
          end
        end
        yield if block_given?
      end
    else
      task :install => subdirs do
        yield if block_given?
      end
    end
  end

  desc "Install #{name} plugin"
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
# css-color https://github.com/ap/vim-css-color.git
# buffergator https://github.com/jeetsukumaran/vim-buffergator.git
# dispatch https://github.com/tpope/vim-dispatch.git
# gundo https://github.com/sjl/gundo.vim.git
# indent-object https://github.com/michaeljsmith/vim-indent-object.git
# kwbd https://github.com/rgarver/Kwbd.vim.git
# eunuch https://github.com/tpope/vim-eunuch.git
# matchit https://github.com/edsono/vim-matchit.git
# narrowregion https://github.com/chrisbra/NrrwRgn.git
# repeat https://github.com/tpope/vim-repeat.git
# multiple-cursors https://github.com/terryma/vim-multiple-cursors.git
# vrooom https://github.com/skalnik/vim-vroom.git

vim_plugin_task "pathogen" do
  sh "mkdir -p ~/.vim/autoload ~/.vim/bundle; curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
  #sh "curl -k https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim > autoload/pathogen.vim"
end

# Colors
vim_plugin_task "sampler-pack",     "git://github.com/vim-scripts/Colour-Sampler-Pack.git"
vim_plugin_task "getafe" ,          "git://github.com/larssmit/vim-getafe.git"
vim_plugin_task "github-colors",    "git://github.com/croaky/vim-colors-github.git"
vim_plugin_task "ir_black",         "git://github.com/twerth/ir_black.git"
vim_plugin_task "mac-classic",      "git://github.com/nelstrom/vim-mac-classic-theme.git"
vim_plugin_task "pyte",             "git://github.com/vim-scripts/pyte.git"
vim_plugin_task "solarized",        "git://github.com/altercation/vim-colors-solarized.git"

# Languages
vim_plugin_task "haml",             "git://github.com/tpope/vim-haml.git"
vim_plugin_task "javascript",       "git://github.com/pangloss/vim-javascript.git"
vim_plugin_task "cucumber",         "git://github.com/tpope/vim-cucumber.git"
vim_plugin_task "markdown",         "git://github.com/tpope/vim-markdown.git"
# vim_plugin_task "puppet",          "git://github.com/ajf/puppet-vim.git"
# vim_plugin_task "scala",           "git://github.com/rosstimson/scala-vim-support.git"
vim_plugin_task "handlebars",       "git://github.com/nono/vim-handlebars.git"
vim_plugin_task "coffee-script",    "git://github.com/kchmck/vim-coffee-script.git"
vim_plugin_task "rails",            "git://github.com/tpope/vim-rails.git"
vim_plugin_task "git",              "git://github.com/tpope/vim-git.git"
vim_plugin_task "textile",          "git://github.com/timcharper/textile.vim.git"
# vim_plugin_task "rspec",           "git://github.com/skwp/vim-rspec.git"
vim_plugin_task "rspec",            "git://github.com/thoughtbot/vim-rspec.git"
vim_plugin_task "scss",             "git://github.com/cakebaker/scss-syntax.vim.git"
vim_plugin_task "csv",              "git://github.com/chrisbra/csv.vim.git"
vim_plugin_task "node-js",          "git://github.com/mmalecki/vim-node.js.git"
vim_plugin_task "ruby",             "git://github.com/vim-ruby/vim-ruby.git"
# vim_plugin_task "arduino",         "git://github.com/vim-scripts/Arduino-syntax-file.git"
# vim_plugin_task "haskell",         "git://github.com/wlangstroth/vim-haskell.git"
vim_plugin_task "vimerl",           "git://github.com/jimenezrick/vimerl.git"
# vim_plugin_task "minitest",         "git://github.com/sunaku/vim-ruby-minitest.git"
# vim_plugin_task "clojure",          "git://github.com/guns/vim-clojure-static.git"
# vim_plugin_task "elixir",           "git://github.com/elixir-lang/vim-elixir.git"
# vim_plugin_task "golang",           "git://github.com/jnwhiteh/vim-golang.git"
vim_plugin_task "treetop",           "git://github.com/nanki/treetop.vim.git"

# Plugins
#vim_plugin_task "abolish",          "git://github.com/tpope/vim-abolish.git"
vim_plugin_task "ack",               "git://github.com/mileszs/ack.vim.git"
#vim_plugin_task "align",             "git://github.com/alanstevens/Align.git"
#vim_plugin_task "autoclose",         "git://github.com/Townk/vim-autoclose.git"
vim_plugin_task "bufexplorer",       "git://github.com/vim-scripts/bufexplorer.zip.git"
vim_plugin_task "bufonly",           "git://github.com/duff/vim-bufonly.git"
vim_plugin_task "bundler",           "git://github.com/tpope/vim-bundler.git"
#vim_plugin_task "camelcasemotion",   "git://github.com/vim-scripts/camelcasemotion.git"
vim_plugin_task "ctags",             "git://github.com/vim-scripts/ctags.vim.git"
vim_plugin_task "ctrlp",             "git://github.com/kien/ctrlp.vim.git"
# vim_plugin_task "dbext",             "git://github.com/vim-scripts/dbext.vim.git"
vim_plugin_task "easymotion",        "git://github.com/Lokaltog/vim-easymotion.git"
vim_plugin_task "endwise",           "git://github.com/tpope/vim-endwise.git"
vim_plugin_task "fugitive",          "git://github.com/tpope/vim-fugitive.git"
vim_plugin_task "greplace",          "git://github.com/vim-scripts/greplace.vim.git"
#vim_plugin_task "indexedsearch",     "git://github.com/henrik/vim-indexed-search.git"
vim_plugin_task "jslint",            "git://github.com/hallettj/jslint.vim.git"
vim_plugin_task "matchit",           "git://github.com/tsaleh/vim-matchit.git"
vim_plugin_task "nerdcommenter",     "git://github.com/ddollar/nerdcommenter.git"
vim_plugin_task "nerdtree",          "git://github.com/alanstevens/nerdtree.git"
#vim_plugin_task "preview",           "git://github.com/greyblake/vim-preview.git" # Changed markdown preview to preview
#vim_plugin_task "ragtag",            "git://github.com/tpope/vim-ragtag.git"
vim_plugin_task "rename",            "git://github.com/danro/rename.vim.git"
#vim_plugin_task "repeat",            "git://github.com/tpope/vim-repeat.git"
vim_plugin_task "rvm",               "git://github.com/csexton/rvm.vim.git"
#vim_plugin_task "searchfold",        "git://github.com/vim-scripts/searchfold.vim.git"
#vim_plugin_task "simplefold",        "git://github.com/vim-scripts/simplefold.git"
#vim_plugin_task "sinatra",           "git://github.com/hallison/vim-ruby-sinatra.git"
vim_plugin_task "snippets",          "git://github.com/honza/vim-snippets.git"
#vim_plugin_task "supertab",          "git://github.com/ervandew/supertab.git"
vim_plugin_task "surround",          "git://github.com/tpope/vim-surround.git"
vim_plugin_task "syntastic",         "git://github.com/scrooloose/syntastic.git"
vim_plugin_task "taglist",           "git://github.com/vim-scripts/taglist.vim.git"
#vim_plugin_task "tailminusf",        "git://github.com/vim-scripts/TailMinusF.git"
vim_plugin_task "tComment",          "git://github.com/vim-scripts/tComment.git"
#vim_plugin_task "textobj",           "git://github.com/kana/vim-textobj-user.git"
#vim_plugin_task "textobj-comment",   "git://github.com/thinca/vim-textobj-comment.git"
#vim_plugin_task "textobj-rubyblock", "git://github.com/nelstrom/vim-textobj-rubyblock.git"
vim_plugin_task "ultisnips",         "git://github.com/SirVer/ultisnips.git"
#vim_plugin_task "vimoutliner",       "git://github.com/Raimondi/vimoutliner.git"
#vim_plugin_task "vim-rake",          "git://github.com/tpope/vim-rake.git"
vim_plugin_task "yankring",          "git://github.com/chrismetcalf/vim-yankring.git"
vim_plugin_task "zencoding",         "git://github.com/mattn/zencoding-vim.git"
#vim_plugin_task "zoomfont",          "git://github.com/alanstevens/zoomfont.git"
vim_plugin_task "zoomwin",           "git://github.com/vim-scripts/ZoomWin.git"

# desc "Update the documentation"
# task :update_docs do
#   puts "Updating VIM Documentation..."
#   system "vim -e -s call pathogen#Helptags()"
# end

# task :default => [ :update_docs ]

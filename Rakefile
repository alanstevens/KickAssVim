module VIM
    Dirs = %w[ autoload bundle ]
end

VIM::Dirs.each do |dir|
    directory(dir)
end

def vim_plugin_task(name, repo=nil)
    cwd = File.expand_path("../", __FILE__)
    # Changed tmp to bundle.
    dir = File.expand_path("bundle/#{name}")
    subdirs = VIM::Dirs

    namespace(name) do
        if repo
            task :install => subdirs do
                if repo =~ /git$/
                    unless File.exist?(dir)
                        sh "git clone #{repo} #{dir}"
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

#
# Plugins included in Carluda Janus
# -----------------------------------------------------------------------
vim_plugin_task "ack",              "git://github.com/mileszs/ack.vim.git"
# I'm not a fan of the whole color-sampler.
#vim_plugin_task "color-sampler",    "git://github.com/vim-scripts/Color-Sampler-Pack.git"
# Changed conque to use github.
vim_plugin_task "conque",           "git://github.com/rson/vim-conque.git"
vim_plugin_task "fugitive",         "git://github.com/tpope/vim-fugitive.git"
vim_plugin_task "git",              "git://github.com/tpope/vim-git.git"
vim_plugin_task "haml",             "git://github.com/tpope/vim-haml.git"
vim_plugin_task "indent_object",    "git://github.com/michaeljsmith/vim-indent-object.git"
vim_plugin_task "javascript",       "git://github.com/pangloss/vim-javascript.git"
vim_plugin_task "jslint",           "git://github.com/hallettj/jslint.vim.git"
# Changed markdown preview to preview
vim_plugin_task "preview",          "git://github.com/greyblake/vim-preview.git"
vim_plugin_task "nerdtree",         "git://github.com/wycats/nerdtree.git"
vim_plugin_task "nerdcommenter",    "git://github.com/ddollar/nerdcommenter.git"
vim_plugin_task "surround",         "git://github.com/tpope/vim-surround.git"
vim_plugin_task "taglist",          "git://github.com/vim-scripts/taglist.vim.git"
vim_plugin_task "supertab",         "git://github.com/ervandew/supertab.git"
vim_plugin_task "cucumber",         "git://github.com/tpope/vim-cucumber.git"
vim_plugin_task "textile",          "git://github.com/timcharper/textile.vim.git"
vim_plugin_task "rails",            "git://github.com/tpope/vim-rails.git"
vim_plugin_task "rspec",            "git://github.com/taq/vim-rspec.git"
vim_plugin_task "zoomwin",          "git://github.com/vim-scripts/ZoomWin.git"
vim_plugin_task "snipmate",         "git://github.com/msanders/snipmate.vim.git"
vim_plugin_task "markdown",         "git://github.com/tpope/vim-markdown.git"
vim_plugin_task "align",            "git://github.com/tsaleh/vim-align.git"
vim_plugin_task "unimpaired",       "git://github.com/tpope/vim-unimpaired.git"
vim_plugin_task "searchfold",       "git://github.com/vim-scripts/searchfold.vim.git"
vim_plugin_task "endwise",          "git://github.com/tpope/vim-endwise.git"
vim_plugin_task "coffee-script",    "git://github.com/kchmck/vim-coffee-script.git"
vim_plugin_task "syntastic",        "git://github.com/scrooloose/syntastic.git"
vim_plugin_task "puppet",           "git://github.com/ajf/puppet-vim.git"
# vim_plugin_task "scala",            "git://github.com/bdd/vim-scala.git"
vim_plugin_task "gist",             "git://github.com/mattn/gist-vim.git"

#
# Plugins from Akitaonrails and Duwanis
#--------------------------------------------------------------------------
# vim_plugin_task "space",            "git://github.com/spiiph/vim-space.git"
vim_plugin_task "repeat",           "git://github.com/tpope/vim-repeat.git"
vim_plugin_task "autoclose",        "git://github.com/Townk/vim-autoclose.git"
vim_plugin_task "align",            "git://github.com/vim-scripts/Align.vim.git"
vim_plugin_task "vimoutliner",      "git://github.com/Raimondi/vimoutliner.git"
vim_plugin_task "asneeded",         "git://github.com/vim-scripts/AsNeeded.git"
vim_plugin_task "bufexplorer",      "git://github.com/vim-scripts/bufexplorer.zip.git"
vim_plugin_task "camelcasemotion",  "git://github.com/vim-scripts/camelcasemotion.git"
vim_plugin_task "dbext",            "git://github.com/vim-scripts/dbext.vim.git"
vim_plugin_task "tailminusf",       "git://github.com/vim-scripts/TailMinusF.git"
vim_plugin_task "yankring",         "git://github.com/chrismetcalf/vim-yankring.git"
vim_plugin_task "textobj",          "git://github.com/kana/vim-textobj-user.git"
vim_plugin_task "textobj-rubyblock", "git://github.com/nelstrom/vim-textobj-rubyblock.git"
vim_plugin_task "textobj-comment",  "git://github.com/thinca/vim-textobj-comment.git"
vim_plugin_task "ragtag",           "git://github.com/tpope/vim-ragtag.git"
vim_plugin_task "command-t",        "git://github.com/akitaonrails/Command-T.git"
vim_plugin_task "vim-ruby",         "git://github.com/vim-ruby/vim-ruby.git"
vim_plugin_task "scss",             "git://github.com/cakebaker/scss-syntax.vim.git"
vim_plugin_task "sinatra",          "git://github.com/hallison/vim-ruby-sinatra.git"
vim_plugin_task "securemodelines",  "git://github.com/ciaranm/securemodelines.git"
vim_plugin_task "abolish",          "git://github.com/tpope/vim-abolish.git"
vim_plugin_task "liftweb",          "git://github.com/Shadowfiend/liftweb-vim.git"
# vim_plugin_task "grails",           "git://github.com/felipero/grails-vim.git"
# vim_plugin_task "clojure",          "git://github.com/vim-scripts/VimClojure.git"
vim_plugin_task "zencoding",        "git://github.com/mattn/zencoding-vim.git"
vim_plugin_task "bufonly",          "git://github.com/duff/vim-bufonly.git"
vim_plugin_task "snippets",         "git://github.com/akitaonrails/snipmate-snippets.git"
#vim_plugin_task "rvm",             "git://github.com/csexton/rvm.vim.git"
#vim_plugin_task "rake",             "git://github.com/tpope/vim-rake.git"

vim_plugin_task "indexedsearch",         "git://github.com/henrik/vim-indexed-search.git"

vim_plugin_task "pathogen" do
    sh "curl  https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim > autoload/pathogen.vim"
end

vim_plugin_task "less" do
    unless File.exists? "bundle/less/syntax/less.vim"
        sh "git clone git://gist.github.com/161047.git bundle/less/syntax"
    else
        Dir.chdir 'bundle/less/syntax' do
            sh "git pull"
        end
    end
end

vim_plugin_task "command-t",        "git://github.com/wincent/Command-T.git" do
    system "cd bundle/command-t/ruby/command-t && ruby extconf.rb && make"
end

desc "Update the documentation"
task :update_docs do
    #puts "Updating VIM Documentation..."
    #system "vim -e -s call pathogen#helptags()"
end

task :default => [ :update_docs ]

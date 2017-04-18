#  _  ___      _                        __      ___
# | |/ (_)    | |        /\             \ \    / (_)
# | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
# |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
# | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
# |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

desc "Install all plugins and dependencies and compile YouCompleteMe"
task :default => ["plugins", "packages", "tern", "ycm"] do
    sh 'echo "source ~/.vim/vimrc" > ~/.vimrc'
    sh 'echo "source ~/.vim/gvimrc" > ~/.gvimrc'
    print_output "Installation", "Complete!"
end

desc "Install Vim plugins"
task:plugins do
    install_vimplug
    install_plugins
end

desc "Install packages"
task:packages do
    install_packages()
end

desc "Build tern runtime and tern for vim"
task :tern do
    cwd = File.expand_path("../", __FILE__)

    print_output "tern for Vim"
    dir = File.expand_path("#{cwd}/plugins/tern_for_vim")
    Dir.chdir dir do
        print_output "tern_for_vim dependencies"
        sh "npm update"
    end
end

desc "Compile YouCompleteMe"
task :ycm do
    cwd = File.expand_path("../", __FILE__)

    print_output "tern runtime"
    dir = File.expand_path("#{cwd}/plugins/YouCompleteMe/third_party/ycmd/third_party/tern_runtime")
    Dir.chdir dir do
        sh "npm update --production"
    end

    print_output "/ Compiling YouCompleteMe"
    dir = File.expand_path("#{cwd}/plugins/YouCompleteMe")
    Dir.chdir dir do
        # TODO: only compile when no binary. Where is it?
        sh "./install.py --tern-completer" # this takes an eTERNity
    end
end

def install_vimplug
    print_output "Vim plug"

    cwd = File.expand_path("../", __FILE__)

    autoloaddir = File.expand_path "#{cwd}/autoload"
    FileUtils.mkdir_p(autoloaddir) unless File.exists?(autoloaddir)

    pluginsdir = File.expand_path "#{cwd}/plugins"
    FileUtils.mkdir_p(pluginsdir) unless File.exists?(pluginsdir)

    plug_file = File.expand_path "#{cwd}/autoload/plug.vim"

    unless File.exists?(plug_file)
        sh "curl -LSso #{plug_file} https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    end
end

def install_plugins
    print_output "/ updating Vim plugins"
    sh "vim -S '~/.vimrc' -c 'PlugUpgrade' -c 'PlugUpdate' -c 'PlugClean!' -c 'qa'; clear"
end

def install_packages
    packages =
        [
            "instant-markdown-d",
            "tern",
            "jshint",
            "eslint",
            "typescript",
            "tslint",
            "dtsm",
            "@angular/cli",
            "ts-server",
            "typescript-formatter",
            "js-beautify",
            "remark-cli", # formatter for markdown
            "typings",
            "instant-markdown-d",
            "git+https://github.com/ramitos/jsctags.git",
            "@angular/language-service",# These next two are prereqs for angular language service below
            "reflect-metadata",
            "ng-tsserver"
    ]
        packages.each do |p|
            print_output p
            sh "npm update -g #{p}"
        end

        print_output "sass"
        sh "gem install sass"

        # Integration Angular language-service with TypeScript's tsserver
        print_output "Angular Language Service"
        sh "curl https://raw.githubusercontent.com/Quramy/ng-tsserver/master/ng-tsserver > ng-tsserver.sh"
        sh "bash ng-tsserver.sh /usr/local/lib/node_modules/typescript; rm ng-tsserver.sh"
end

def print_output(verb, name = nil)
    if !name
        name = verb
        verb = "Installing"
    end
    puts
    puts "*" * 42
    puts "*#{"#{verb} #{name}".center(40)}*"
    puts "*" * 42
    puts
end

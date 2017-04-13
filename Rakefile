#  _  ___      _                        __      ___
# | |/ (_)    | |        /\             \ \    / (_)
# | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
# |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
# | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
# |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

desc "Install all plugins and dependencies and compiles YouCompleteMe"
task :default => ["plugins", "npm", "tern", "ycm"] do
    sh 'echo "source ~/.vim/vimrc" > ~/.vimrc'
    sh 'echo "source ~/.vim/gvimrc" > ~/.gvimrc'
    print_output "Complete!"
end

desc "Installs Vim plugins"
task:plugins do
    install_vimplug
    install_plugins
end

desc "Installs NPM dependencies"
task:npm do
    install_npm_dependencies()
end

desc "Builds tern runtime and tern for vim"
task :tern do
    cwd = File.expand_path("../", __FILE__)

    print_output "tern for Vim"
    dir = File.expand_path("#{cwd}/plugins/tern_for_vim")
    Dir.chdir dir do
        print_output "tern_for_vim dependencies"
        sh "npm update"
    end
end

desc "Compiles YouCompleteMe"
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

def print_output(name)
    puts
    puts "*" * 42
    puts "*#{"Installing #{name}".center(40)}*"
    puts "*" * 42
    puts
end

def install_vimplug
    print_output "Vim plug"

    dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
    FileUtils.mkdir_p(dir) unless File.exists?(dir)

    dir = File.expand_path "#{File.expand_path("../", __FILE__)}/plugins"
    FileUtils.mkdir_p(dir) unless File.exists?(dir)

    file_name = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload/plug.vim"

    unless File.exists?(file_name)
        sh "curl -LSso #{file_name} https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    end
end

def install_plugins
    print_output "/ updating Vim plugins"
    sh "vim -S '~/.vimrc' -c 'PlugUpgrade' -c 'PlugUpdate' -c 'PlugClean!' -c 'qa'; clear"
end

def npm_install(name)
    print_output name
    sh "npm update -g #{name}"
end

def install_npm_dependencies

    npm_install "instant-markdown-d"

    npm_install "tern"

    npm_install "jshint"

    npm_install "eslint"

    npm_install "typescript"

    npm_install "tslint"

    npm_install "dtsm"

    npm_install "@angular/cli"

    npm_install "ts-server"

    npm_install "clausreinke/typescript-tools.vim"

    npm_install "typings"

    npm_install "@angular/language-service"

    npm_install "reflect-metadata"

    npm_install "dtsm"

    print_output "jsctags"
    sh "npm install -g git+https://github.com/ramitos/jsctags.git"

    print_output "ng-tsserver"
    sh "curl https://raw.githubusercontent.com/Quramy/ng-tsserver/master/ng-tsserver > ng-tsserver.sh"
    sh "bash ng-tsserver.sh /usr/local/lib/node_modules/typescript; rm ng-tsserver.sh"
end

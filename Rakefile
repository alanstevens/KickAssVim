#  _  ___      _                        __      ___
# | |/ (_)    | |        /\             \ \    / (_)
# | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
# |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
# | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
# |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

desc "Install all plugins and dependencies and compiles YouCompleteMe"
task :default => ["plugins", "npm", "tern", "ycm"] do
    print_output "Complete!"
end

desc "Installs Vim plugins"
task:plugins do
    sh 'echo "source ~/.vim/vimrc" > ~/.vimrc'
    sh 'echo "source ~/.vim/gvimrc" > ~/.gvimrc'
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

def install_npm_dependencies

    print_output "instant-markdown"
    sh "npm update -g instant-markdown-d"

    print_output "jshint"
    sh "npm update -g jshint"

    print_output "eslint"
    sh "npm update -g eslint"

    print_output "typescript"
    sh "npm update -g typescript"

    print_output "tslint"
    sh "npm update -g tslint"

    print_output "dtsm"
    sh "npm update -g dtsm"

    print_output "angular-cli"
    sh "npm update -g @angular/cli"

    print_output "typescript server"
    sh "npm update -g ts-server"

    print_output "typescript tools"
    sh "npm update -g clausreinke/typescript-tools.vim"

    print_output "typings"
    sh "npm update -g typings"

    # the next two packages are prerequisites to ng-tsserver integration with angular language service
    print_output "@angular language service"
    sh "npm update -g @angular/language-service"

    print_output "reflect-metadata"
    sh "npm update -g reflect-metadata"

    print_output "ng-tsserver"
    sh "curl https://raw.githubusercontent.com/Quramy/ng-tsserver/master/ng-tsserver > ng-tsserver.sh"
    # sh "bash ng-tsserver.sh ${$(which tsserver)/bin\/tsserver/node_modules\/typescript}" # doesn't work
    sh "bash ng-tsserver.sh /usr/local/lib/node_modules/typescript"
end

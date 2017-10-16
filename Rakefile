#  _  ___      _                        __      ___
# | |/ (_)    | |        /\             \ \    / (_)
# | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
# |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
# | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
# |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

@cwd = File.expand_path("../", __FILE__)
@windows = (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil

desc "Install all plugins and dependencies and compile YouCompleteMe"
task :default => ["config_files", "plugins", "packages", "tern", "ycm"] do
    print_output "Installation", "Complete!"
end

desc "create config files"
task:config_files do
    if @windows
        home_dir = Dir.home
        vimrc = "#{home_dir}/vimfiles/vimrc"
        gvimrc = "#{home_dir}/vimfiles/gvimrc"

        sh "echo source " + vimrc + " > #{home_dir}/_vimrc" 
        sh "echo source " + gvimrc + " > #{home_dir}/_gvimrc" 
    else
        sh 'echo "source ~/.vim/vimrc" > ~/.vimrc'
        sh 'echo "source ~/.vim/gvimrc" > ~/.gvimrc'
        # neovim
        sh 'ln -s ~/.vim ~/.config/nvim'
        sh 'ln -s ~/.vimrc ~/.config/nvim/init.vim'
    end
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
    print_output "tern for Vim"
    dir = File.expand_path("#{@cwd}/plugins/tern_for_vim")
    Dir.chdir dir do
        print_output "tern_for_vim dependencies"
        sh "npm install"
    end
end

desc "Compile YouCompleteMe"
task :ycm do
    print_output "tern runtime"
    dir = File.expand_path("#{@cwd}/plugins/YouCompleteMe/third_party/ycmd/third_party/tern_runtime")
    Dir.chdir dir do
        sh "npm install --production"
    end

    print_output "/ Compiling YouCompleteMe"
    dir = File.expand_path("#{@cwd}/plugins/YouCompleteMe")
    Dir.chdir dir do
        # TODO: only compile when no binary. Where is it?
        if @windows
            sh "python install.py --tern-completer" # this takes an eTERNity
        else
            sh "./install.py --tern-completer" # this takes an eTERNity
        end
    end
end

def install_vimplug
    print_output "Vim plug"

    autoloaddir = File.expand_path "#{@cwd}/autoload"
    FileUtils.mkdir_p(autoloaddir) unless File.exists?(autoloaddir)

    pluginsdir = File.expand_path "#{@cwd}/plugins"
    FileUtils.mkdir_p(pluginsdir) unless File.exists?(pluginsdir)

    plug_file = File.expand_path "#{@cwd}/autoload/plug.vim"

    unless File.exists?(plug_file)
        sh "curl -LSsok #{plug_file} https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    end
end

def install_plugins
    print_output "/ updating Vim plugins"

    vim_config = '~/.vimrc'
    if @windows
        vim_config = "#{Dir.home}/_vimrc"
    end
    sh "vim -S #{vim_config} -c PlugUpgrade -c PlugUpdate -c PlugClean! -c qa" #; clear"

    print_output "VimProc"
    dir = File.expand_path("#{@cwd}/plugins/vimproc.vim")
    Dir.chdir dir do
        sh "make"
    end
end

def install_packages
    packages =
        [
            "instant-markdown-d",
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
            "instant-markdown-d",
            "git+https://github.com/ramitos/jsctags.git"
    ]
        packages.each do |p|
            print_output p
            sh "npm install -g #{p}"
        end

        print_output "sass"
        sh "gem install sass"
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

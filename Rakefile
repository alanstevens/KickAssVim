#  _  ___      _                        __      ___
# | |/ (_)    | |        /\             \ \    / (_)
# | ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
# |  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
# | . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
# |_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

@cwd = File.expand_path("../", __FILE__)
@windows = (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
# Gem.win_platform?

desc "Install all plugins and dependencies and compile YouCompleteMe"
task :default =>
[
    :config_files,
    :vimplug,
    :plugins,
    :packages,
    :ycm,
    :print_complete
]

desc "print complete message"
task :print_complete do
    print_output "Installation", "Complete!"
end

desc "create config files"
task:config_files do
    if @windows
        home_dir = Dir.home
        vimrc = "#{home_dir}/vimfiles/vimrc"
        gvimrc = "#{home_dir}/vimfiles/gvimrc"

        sh "echo source #{vimrc} > #{home_dir}/_vimrc"
        sh "echo source #{gvimrc} > #{home_dir}/_gvimrc"
    else
        sh "echo source ~/.vim/vimrc > ~/.vimrc"
        sh "echo source ~/.vim/gvimrc > ~/.gvimrc"
    end
end

desc "Install Vim plug."
task:vimplug do
    print_output "Vim plug"

    autoloaddir = File.expand_path "#{@cwd}/autoload"
    FileUtils.mkdir_p(autoloaddir) unless File.exists?(autoloaddir)

    pluginsdir = File.expand_path "#{@cwd}/plugins"
    FileUtils.mkdir_p(pluginsdir) unless File.exists?(pluginsdir)

    plug_file = File.expand_path "#{@cwd}/autoload/plug.vim"

    unless File.exists?(plug_file)
        sh "curl -fLk --insecure https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > #{plug_file}"
    end
end

desc "Install Vim plugins."
task:plugins do
    print_output "/ updating Vim plugins"

    vim_config = "~/.vimrc"
    if @windows
        vim_config = "#{Dir.home}/_vimrc"
    end
    sh "vim -S #{vim_config} -c PlugUpgrade -c PlugUpdate -c PlugClean! -c qa"
end

desc "Install packages"
task:packages do
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
            "tern",
            "tern-jsx",
            "git+https://github.com/ramitos/jsctags.git"
    ]
    packages.each do |p|
        print_output p
        sh "npm install -g --production #{p}"
    end

    sh "npm update -g"

    print_output "sass"
    sh "gem install sass --no-ri --no-rdoc"
end

desc "Compile YouCompleteMe"
task :ycm do
    print_output "Compiling" "YouCompleteMe"
    dir = File.expand_path("#{@cwd}/plugins/YouCompleteMe")
    Dir.chdir dir do
        if @windows
            sh "python install.py --cs-completer --js-completer"
        else
            sh "./install.py --cs-completer --js-completer"
        end
    end
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

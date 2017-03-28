# This isn't really a rakefile anymore, but it's convenient to simply type 'rake'

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

    dir = File.expand_path "#{File.expand_path("../", __FILE__)}/plugin"
    FileUtils.mkdir_p(dir) unless File.exists?(dir)

    file_name = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload/plug.vim"

    puts "file exists? #{File.exists?(file_name)}"

    unless File.exists?(file_name)
        puts "file name #{file_name}"
        sh "curl -LSso #{file_name} https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    end

end


def install_binary_dependencies
    cwd = File.expand_path("../", __FILE__)
    dir = File.expand_path("#{cwd}/bundle/tern_for_vim")
    Dir.chdir dir do
        print_output "tern_for_vim"
        sh "npm install"
    end

    print_output "jshint"
    sh "npm install -g jshint"
    print_output "eslint"
    sh "npm install -g eslint"
    print_output "typescript"
    sh "npm install -g typescript"
    print_output "tslint"
    sh "npm install -g tslint "

    dir = File.expand_path("#{cwd}/bundle/YouCompleteMe")
    Dir.chdir dir do
        print_output "YouCompleteMe dependencies"
        sh "git submodule update --init --recursive"
        print_output "YouCompleteMe"
        # TODO: only compile when no binary. Where is it?
        sh "./install.py --tern-completer" # this takes an eternity
    end
    dir = File.expand_path("#{cwd}/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime")
    Dir.chdir dir do
        print_output "tern_runtime"
        sh "npm install --production"
    end
end

install_vimplug

# Call this last:
# install_binary_dependencies()

task :default


def print_output(name)
    puts
    puts "*" * 42
    puts "*#{"Installing #{name}".center(40)}*"
    puts "*" * 42
    puts
end

desc "Installs all plugins and dependencies"
task :default do
    sh 'echo "source ~/.vim/vimrc" > ~/.vimrc'
    sh 'echo "source ~/.vim/gvimrc" > ~/.gvimrc'

    def install_vimplug
        print_output "Vim plug"

        dir = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload"
        FileUtils.mkdir_p(dir) unless File.exists?(dir)

        dir = File.expand_path "#{File.expand_path("../", __FILE__)}/bundle"
        FileUtils.mkdir_p(dir) unless File.exists?(dir)

        file_name = File.expand_path "#{File.expand_path("../", __FILE__)}/autoload/plug.vim"

        unless File.exists?(file_name)
            sh "curl -LSso #{file_name} https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
        end
    end

    def install_binary_dependencies
        cwd = File.expand_path("../", __FILE__)

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

        # the next two packages are prerequisites to ng-tsserver integration with angular language service
        print_output "@angular language service"
        sh "npm update -g @angular/language-service reflect-metadata"

        print_output "typescript server"
        sh "npm update -g ts-server"

        print_output "ng-tsserver"
        sh "curl https://raw.githubusercontent.com/Quramy/ng-tsserver/master/ng-tsserver > ng-tsserver.sh; bash ng-tsserver.sh /usr/local/lib/node_modules/typescript"

        # print_output "tern runtime"
        # dir = File.expand_path("#{cwd}/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime")
        # Dir.chdir dir do
        #     sh "npm update --production"
        # end
        #
        # print_output "tern for Vim"
        # dir = File.expand_path("#{cwd}/bundle/tern_for_vim")
        # Dir.chdir dir do
        #     print_output "tern_for_vim dependencies"
        #     sh "npm update"
        # end

    end

    install_vimplug

    print_output "Vim plugins"
    sh "vim -S '~/.vimrc' -c 'PlugUpgrade' -c 'PlugUpdate' -c 'PlugClean!' -c 'qa'; clear"

    # Call this last:
    install_binary_dependencies()

    print_output "Complete!"

end

# desc "Compiles YouCompleteMe"
# task :compile_ycm do
#     print_output "/ Compiling YouCompleteMe"
#     cwd = File.expand_path("../", __FILE__)
#     dir = File.expand_path("#{cwd}/bundle/YouCompleteMe")
#     Dir.chdir dir do
#         # TODO: only compile when no binary. Where is it?
#         sh "./install.py --tern-completer" # this takes an eTERNity
#     end
#     print_output "/ Compiling YouCompleteMe Complete!"
# end

# desc "Install all plugins and dependencies and compile YouCompleteMe"
# task :all => ["default", "compile_ycm"]

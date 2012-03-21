#!/usr/bin/env bash

bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
echo '[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion' >> ~/.bash_profile

echo "install: --no-rdoc --no-ri" >> ~/.gemrc
echo "update: --no-rdoc --no-ri" >> ~/.gemrc

source ~/.bash_profile

chmod +x $rvm_path/hooks/after_cd_bundler

rvm install 1.9.3-p125

rvm use 1.9.3-p125 --default

rvm use 1.9.3-p125@global

#!/usr/bin/env bash

bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile

source ~/.bash_profile

rvm install 1.9.2

rvm use 1.9.2 --default

rvm use 1.9.2@global

gem install rails --no-rdoc --no-ri
gem install bundler --no-rdoc --no-ri

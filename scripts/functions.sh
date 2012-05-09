#!/usr/bin/env bash

function gvimwithtab(){

if [ "$#" -eq "0" ]; then

  local serverList=`vim --serverlist`

  if [ -z "$serverList" ]; then

    /usr/bin/gvim

    return

  fi

  /usr/bin/gvim --remote-send "<C-\><C-N>:tabnew<CR>"

else

  /usr/bin/gvim --remote-tab-silent "$1"

fi
}

function newgemset(){

  # Use the folder name, sans path, if no name supplied.
  local name="${PWD##*/}"

  if [ "$1" != "" ]; then
    name="$1"
  fi

  # echo -e "Folder name is: $name\n"

  local ruby_version=`rvm-prompt v p`

  if [ "$2" != "" ]; then
    ruby_version="$2"
  fi

  # echo -e "Ruby version is: $ruby_version\n"

  # Source RVM as a function into local environment.
  if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

    # First try to load from a user install
    source "$HOME/.rvm/scripts/rvm"

  elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

    # Then try to load from a root install
    source "/usr/local/rvm/scripts/rvm"

  else

    printf "ERROR: An RVM installation was not found.\n"
    return 1

  fi

  # echo -e "Gemset is: $ruby_version@$name\n"

  rvm --create --rvmrc use $ruby_version@$name
  rvm rvmrc trust
}

# Create a new rails app from the Rails Template.
# arg1: app_name
function newrailsapp(){
  if [ "$#" -eq "0" ]; then
    return
  fi
  app_name=$1
  echo -e "#\n# Cloning template\n#"

  git clone git://github.com/NerdHiveIndustries/Rails-Template.git $app_name

  cd $app_name

  echo -e "Current working directory has changed to $PWD"

  rm -rf .git
  rm -f Gemfile.loc

  echo -e "Installing gems via bundler"

  bundle install --binstubs

  echo -e "#\n# Renaming rails app to $app_name\n#"

  bundle exec rails g rename_app $app_name
  rm config/initializers/rename_app.rb
  rm lib/rename_app.rb

  echo -e "#\n# Creating git repository and adding files\n#"

  git init
  git add .
  git commit -m"Initial add"
}

export -f newgemset
export -f gvimwithtab
export -f newrailsapp

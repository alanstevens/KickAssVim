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

  if [ $# > 0 ]; then
    name="$1"
  fi

  local ruby_version="1.9.2"

  if [ $# > 1 ]; then
    ruby_version="$2"
  fi
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

  rvm use $ruby_version
  rvm gemset create $name
  rvm use $ruby_version@$name
  echo  "rvm use $ruby_version@$name" > .rvmrc
  rvm rvmrc trust
  gem env gemdir
}

export -f newgemset
export -f gvimwithtab


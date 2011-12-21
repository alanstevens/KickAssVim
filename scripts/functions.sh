#!/usr/bin/env bash

export -f newgemset
export -f gvimwithtab

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
local readonly rubyversion="1.9.2"

# Source RVM as a function into local environment.
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"

else

  printf "ERROR: An RVM installation was not found.\n"
  return

fi

if [ "$#" -eq "0" ]; then

    local name="${PWD##*/}"

else

    local name="$1"

fi

rvm use $rubyversion
rvm gemset create $name
rvm use $rubyversion@$name
echo  "rvm use $rubyversion@$name" >> .rvmrc
rvm rvmrc trust
gem env gemdir
}

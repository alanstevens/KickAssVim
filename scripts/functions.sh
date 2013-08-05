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

export -f gvimwithtab

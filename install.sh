#!/bin/bash
# echo "source ~/.vim/vimrc" > ~/.vimrc
# echo "source ~/.vim/gvimrc" > ~/.gvimrc
# cd ~/.vim/

# echo "Updating/cleaning Vim plugins:"

# PlugInstall [name ...] [#threads]	Install plugins
# PlugUpdate [name ...] [#threads]	Install or update plugins
# PlugClean[!]	Remove unused directories (bang version will clean without prompt)
# PlugUpgrade	Upgrade vim-plug itself
# PlugStatus	Check the status of plugins
# PlugDiff	Examine changes from the previous update and the pending changes
# PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins

# Thanks for greywh in #vim for this tip
# vim -E -s <<-EOF
#     :source ~/.vimrc
#     :PlugUpgrade
#     :PlugClean!
#     :PlugUpdate
#     :qa
# EOF

#! /bin/bash

# echo "Updating/cleaning Vim plugins:"

# vim -E -s <<-EOF
#     :source ~/.vimrc
#     :PlugInstall
#     :PlugClean
#     :qa
# EOF

# vim -E -s ":source ~/.vimrc <CR> :source ~/.vim/plug.vim <CR> :PlugInstall <CR> :quit <CR>"

# vim +source ~/.vim +pluginstall +qall
# vim -E -c :PlugInstall -c q

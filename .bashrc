#!/bin/bash

PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;31m\]\W\[\e[m\] \[\e[0;34m\]\$\[\e[m\]\[\e[0;32m\] '
sudo setxkbmap -layout br

if [ -f ~/.aliases.sh ]; then
    . ~/.aliases.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


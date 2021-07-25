[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] &&  /bin/startx
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] ;then exec fish ;fi

if [ -f ~/.aliases ]; then
source ~/.aliases
fi

[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f  /opt/asdf-vm/asdf.sh ] && source /opt/asdf-vm/asdf.sh


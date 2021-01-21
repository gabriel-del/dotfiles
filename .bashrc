if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] ;then exec fish ;fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
  export PATH="$(echo ${path2[*]} | sed '/^#/d'  | sed 's/ /:/g')"
  export PATH="$(echo $path | sed '/^#/d'  | sed 's/ /:/g')"
fi

[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

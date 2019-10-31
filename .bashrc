#!/bin/bash

PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;31m\]\W\[\e[m\] \[\e[0;34m\]\$\[\e[m\]\[\e[0;32m\] '
sudo setxkbmap -layout br

if [ -f ~/.aliases.sh ]; then
    . ~/.aliases.sh
		# export PATH="$(echo ${path2[*]} | sed '/^#/d'  | sed 's/ /:/g')"
		export PATH="$(echo $path2 | sed '/^#/d'  | sed 's/ /:/g')"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash





#navegação

Ld() { tre -pL 1 $* | grep '^\[[d|l]' | cut -d' ' -f 3- | sed "s/ -> .*//g" ;}
La() { tre -pL 1 $* | grep '^\[[-|l]' | cut -d' ' -f 3- | sed "s/ -> .*//g" ;}
F() { ls | grep "$*" | sed -n 1p ;}
cc() { [[ -n "${!1}" ]] && cd ${!1} && ls || echo "Não encontrado";}
c() { cd  "$(Ld | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ; ls;}
v() { vim "$(La | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ;}
#g() { gedit "$(La | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ;}
CD() { select i in $(Ld $* | sed 's/ /"-"/g'); do cd "$(echo "$i" | sed 's/"-"/ /')"; break ;done ;}

#utilidade
lns() { ln -s "$(pwd)/$1" "$1"-2 ;}
tre() { tree -fi $* | sed -n "2,+$(tree -fi $* | sed '1,4'd | wc -l)"p ;} 
tres() { for i in $(tre); do [[ -f "$i" ]] && [[ -n "$(cat "$i" | grep "$*")" ]] && echo "$i" ;done ;}
ext() { cont="$(echo "${!1}" | sed "s/\./\n/g" | wc -l)" ; [[ "$cont" -gt 1 ]] && let cont--;
    export "$1"="$(echo "${!1}" |cut -d. -f-"$cont")" ;}
pen() { sudo pv "$(pwd)/$1" | sudo dd of=/dev/sdb ;}
out() { sudo pkill -u $USER ;}

#git
gg() { git add . ; git commit -m "$([[ $# -eq 0 ]] && echo $(date +%F=%T) || echo $@)" ; git push;}
alias gs='git status'
















export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

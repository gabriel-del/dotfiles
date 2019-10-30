set path "
/bin
~/.gem/ruby/2.4.0/bin
~/.bin
~/.scripts
/home/linuxbrew/.linuxbrew/bin
~/.go/bin
/usr/local/bin
/usr/local/sbin
/sbin
/src/sbin
/usr/bin
/usr/games
/usr/lib64/kde4/libexec
/usr/lib64/qt/bin
/usr/sbin
/usr/share/texmf/bin
/usr/lib64/ruby/gems/2.1.0
~/.gem/ruby/2.1.0
/usr/lib64/ruby/gems/2.1.0/gems/jekyll-3.7.3/exe
/usr/lib64/ruby/gems/2.1.0/gems/bundler-1.16.1/exe
/usr/lib64/python2.7/site-packages
/usr/lib64
~/.yarn/bin
~/.config/yarn/global/node_modules/.bin
/opt/andoird-sdk/tools
/opt/andoird-sdk/platform-tools
/usr/bin/site_perl
/usr/bin/vendor_perl
/usr/bin/core_perl
/opt/blender
~/.go/bin
/opt/andoid-sdk/tools
/opt/andoid-sdk/platform-tools
"
set -x PATH (echo $path | tr '\n' ' ' | string split ' ')

#/usr/local/sbin /usr/local/bin /usr/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl

set -x  GOPATH "$HOME/.go"
set -x  WEKA_HOME "$HOME/.wekafiles"
set -x ANDROID_HOME /opt/android-sdk


#Manuais
set -x EDITOR "/usr/bin/vim"
set -x TERMINAL st
set -x BROWSER google-chrome-stable
set -x GTK2_RC_FILES "$HOME/.gtkrc-2.0"
set -x manvim "/usr/share/vim/(ls /usr/share/vim | grep [1-9])/doc"
set -x manmutt "/usr/share/doc/mutt"
set -x archwiki "/usr/share/doc/arch-wiki/"

#eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#Renames
alias ls 'ls --color=auto'
alias dir 'dir --color=auto'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'
alias df 'df -h'
alias cp 'cp -vr'
alias bd ". bd -si"
alias rm 'rm -rv'
# which vimx &> /dev/null && alias vim 'vimx'
#-u ~/.vim/vimrc'
alias ranger 'ranger --choosedir=$HOME/.rangerdir;cd "(cat $HOME/.rangerdir)"'
alias yay "sudo -u duser yay"
alias trizen "sudo -u visita trizen"

#preguiças
alias r "ranger"
alias sn "sncli"
alias q 'exit'
alias x 'startx'
alias kl 'killall'
alias .. 'cd .. && ls'    
alias ... 'cd ../.. && ls'
alias .... 'cd ../../.. && ls'

#atalhos
alias mountp "mount -o uid=(id -u $USER),gid=(id -g $USER)"
alias bs 'source ~/.bashrc && source ~/.bash_profile'
alias bb 'vim ~/.bashrc'
alias bp 'vim ~/.bash_profile'
alias ss 'systemctl suspend -i'
# alias ss "sudo pm-suspend"
# alias cdr 'cd - &> /dev/null'
#alias ss 'set +x && set +x'
# alias tempo "curl http://wttr.in/$(basename "$(ls -l | grep localtime | cut -d'>' -f2-)")"
alias pop 'Popcorn-Time'
alias vi 'vim +PluginInstall +qall'
alias dddd 'sdcv -c'

#Install
# alias dprograms '/root/PublicShare/Dprograms/Dprograms.sh'
# alias d 'dprograms -i'
# alias D 'dprograms -I'
# alias ds 'dprograms -s'
# alias Du 'dprograms -u'
# alias dr 'dprograms -r'
# alias DD 'dsync -cus'
alias d "pacman -S --noconfirm"
alias ds "pacman -Ss"

#navegação

# Ld() { tre -pL 1 $* | grep '^\[[d|l]' | cut -d' ' -f 3- | sed "s/ -> .*//g" ;}
# La() { tre -pL 1 $* | grep '^\[[-|l]' | cut -d' ' -f 3- | sed "s/ -> .*//g" ;}
# F() { ls | grep "$*" | sed -n 1p ;}
# cc() { [[ -n "${!1}" ]] && cd ${!1} && ls || echo "Não encontrado";}
# c() { cd  "$(Ld | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ; ls;}
# v() { vim "$(La | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ;}
# #g() { gedit "$(La | grep "$1" | sed -n "$([[ -n $2 ]] && echo $2 || echo 1 )"p)" ;}
# CD() { select i in $(Ld $* | sed 's/ /"-"/g'); do cd "$(echo "$i" | sed 's/"-"/ /')"; break ;done ;}

function v
	for x in *
    if test -f $x
        echo $x | grep $argv[1] 
    end
	end
end



#utilidade
# lns() { ln -s "$(pwd)/$1" "$1"-2 ;}
function tre 
	tree -fi $argv | sed -n 2,+(tree -fi $argv | sed '1,4'd | wc -l)p 
end
function tres
	for i in (tre)
		# [[ -f "$i" ]] && [[ -n "$(cat "$i" | grep "$*")" ]] && echo "$i" 
		if test -f "$i" 
				if test -n	echo (cat $i | grep $argv)
					# echo $i
					echo (cat $i | grep $argv | tr '\n' ':')

			end
		end
	end 
end
# ext() { cont "$(echo "${!1}" | sed "s/\./\n/g" | wc -l)" ; [[ "$cont" -gt 1 ]] && let cont--;
#     set -x "$1"="$(echo "${!1}" |cut -d. -f-"$cont")" ;}
# pen() { sudo pv "$(pwd)/$1" | sudo dd of=/dev/sdb ;}
# out() { sudo pkill -u $USER ;}
#
#git
# unalias gc
function gg 
	git add . 
	#git commit -m "$([[ $# -eq 0 ]] && echo $(date +%F=%T) || echo $@)" 
	git commit -m "default" 
	git push
end
# G() { git add . 
  # git commit -m "$(date +%F=%T)"
  # git push origin master ;}
alias gs 'git status'

#Tmux
alias ts 'tmux attach-session -t'
alias tn 'tmux new -s'
alias tl 'tmux ls'


#Erros
# xmo2() { set -x;  echo "pointer = 1 2 3 5 4 7 6 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap &> /dev/null ;set +x;}
# xmo1() { set -x; echo "pointer = 1 2 3 4 5 6 7 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap &> /dev/null ;set +x;}
# vv() { pactl set-sink-volume $([[ -n $2 ]] && echo $2 || echo 0) "$1"% ;}
# vvv() { amixer get Master | egrep -o "[0-9]+%" | uniq ;}


# Static
alias h 'hugo server -D'
alias hf "hugo server -D  --port 1314 --source $DIR_hff"
alias he "hugo server -D --port 1315 --source $DIR_hee"

alias fs "$HOME/.Freenet/run.sh stop"

#VirtualBox
alias vb 'VBoxManage'
alias vc 'VBoxManage controlvm'
alias vw 'VBoxManage controlvm windows'

#git remote add origin git@github.com:gabriel-del/ecommerce-example.git


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
[[ -n $DISPLAY && $XDG_VTNR -eq 1 && $TERM =~ (xterm|st) ]] && tmux

export path2="
/bin
$HOME/.gem/ruby/2.4.0/bin
$HOME/.gem/ruby/2.6.0/bin
$HOME/.bin
$HOME/.scripts
/home/linuxbrew/.linuxbrew/bin
$HOME/.go/bin
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
$HOME/.gem/ruby/2.1.0
/usr/lib64/ruby/gems/2.1.0/gems/jekyll-3.7.3/exe
/usr/lib64/ruby/gems/2.1.0/gems/bundler-1.16.1/exe
/usr/lib64/python2.7/site-packages
/usr/lib64
$HOME/.yarn/bin
$HOME/.config/yarn/global/node_modules/.bin
/opt/andoird-sdk/tools
/opt/andoird-sdk/platform-tools
/usr/bin/site_perl
/usr/bin/vendor_perl
/usr/bin/core_perl
/opt/blender
$HOME/.go/bin
/opt/andoid-sdk/tools
/opt/andoid-sdk/platform-tools
"

export GOPATH="$HOME/.go"
export WEKA_HOME="$HOME/.wekafiles"
export ANDROID_HOME=/opt/android-sdk

#Manuais
export EDITOR="/usr/bin/vim"
export TERMINAL=st
export BROWSER=google-chrome-stable
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
#export manvim="/usr/share/vim/$(ls /usr/share/vim | grep [1-9])/doc"
export manmutt="/usr/share/doc/mutt"
export archwiki="/usr/share/doc/arch-wiki/"

#eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#Renames
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias df='df -h'
alias cp='cp -vr'
alias bd=". bd -si"
alias rm='rm -rv'
# alias ranger='ranger --choosedir=$HOME/.rangerdir;cd "$(cat $HOME/.rangerdir)"'
alias sudo="sudo -u sudo"
alias yay="sudo yay"
alias trizen="sudo trizen"

#preguiças
alias r="ranger"
alias sn="sncli"
alias q='exit'
alias x='startx'
alias kl='killall'
alias ..='cd .. && ls'    
alias ...='cd ../.. && ls'
alias ....='cd ../../.. && ls'

#atalhos
alias mountp="mount -o uid=$(id -u $USER),gid=$(id -g $USER)"
alias bs='source ~/.bashrc && source ~/.bash_profile'
alias bb='vim ~/.bashrc'
alias bp='vim ~/.bash_profile'
alias ss='systemctl suspend -i'
# alias ss="sudo pm-suspend"
# alias cdr='cd - &> /dev/null'
#alias ss='set +x && set +x'
alias tempo="curl http://wttr.in/$(basename "$(ls -l | grep localtime | cut -d'>' -f2-)")"
alias pop='Popcorn-Time'
alias vi='vim +PluginInstall +qall'
alias dddd='sdcv -c'

#Install
# alias dprograms='/root/PublicShare/Dprograms/Dprograms.sh'
# alias d='dprograms -i'
# alias D='dprograms -I'
# alias ds='dprograms -s'
# alias Du='dprograms -u'
# alias dr='dprograms -r'
# alias DD='dsync -cus'
alias d="pacman -S --noconfirm"
alias ds="pacman -Ss"


#Tmux
alias ts='tmux attach-session -t'
alias tn='tmux new -s'
alias tl='tmux ls'

# Static
alias h='hugo server -D'
alias hf="hugo server -D  --port 1314 --source $DIR_hff"
alias he="hugo server -D --port 1315 --source $DIR_hee"

#VirtualBox
alias vb='VBoxManage'
alias vc='VBoxManage controlvm'
alias vw='VBoxManage controlvm windows'


alias out="sudo pkill -u $USER"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='colorls --sd'

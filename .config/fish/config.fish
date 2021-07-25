if test -f ~/.aliases
    replay source ~/.aliases replay
    set -x PATH (/bin/echo "$path"  | string split ':')
end

[ -f /opt/asdf-vm/asdf.fish ] && source /opt/asdf-vm/asdf.fish


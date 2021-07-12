if test -f ~/.aliases
    replay source ~/.aliases replay
    set -x PATH (/bin/echo "$path"  | string split ':')
end


#set -x
if test -f ~/.aliases
    replay source ~/.aliases replay
    set -x PATH (echo $path | sed '/^#/d' | tr '\n' ' ' | string split ' ')
end


if test -f ~/.aliases
    bax source ~/.aliases bax
    set -x PATH (echo $path | sed '/^#/d' | tr '\n' ' ' | string split ' ')
end


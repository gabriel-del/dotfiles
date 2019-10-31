if test -f ~/.aliases.sh 
    bax source ~/.aliases.sh
		set -x PATH (echo $path2 | sed '/^#/d' | tr '\n' ' ' | string split ' ')
end

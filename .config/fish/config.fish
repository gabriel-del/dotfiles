if test -f ~/.aliases.sh 
    bax source ~/.aliases.sh
		set -x PATH (echo $path2 | sed '/^#/d' | tr '\n' ' ' | string split ' ')
end

function v
	vim (colorls -1f | cut -d' ' -f7 | grep "$argv[1]" | sed -n ([ -n "$argv[2]" ] ;and echo "$argv[2]" ;or echo 1)p)
end

function c
	cd (colorls -1d | cut -d' ' -f7 | grep "$argv[1]" | sed -n ([ -n "$argv[2]" ] ;and echo "$argv[2]" ;or echo 1)p)
	ls
end

function gg
	[ "$PWD" = "$HOME" ] ; and  set COMMAND config ; or set COMMAND git
	$COMMAND commit -a -m ([ -n "$argv[1]" ] ; and echo "$argv" ;or date +%F=%T)
	$COMMAND push 
end

function gs
	[ "$PWD" = "$HOME" ] ; and  set COMMAND config ; or set COMMAND git
	$COMMAND status 
end

fish_ssh_agent

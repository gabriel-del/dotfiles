#!/bin/sh
#
# LXDM wrapper to run around X sessions.

exec 1>/tmp/xinit.log 2>&1

echo "Running X session wrapper"

# Load profile
# for file in "/etc/profile" "$HOME/.profile" "/etc/xprofile" "$HOME/.xprofile"; do
for file in "$HOME/.xprofile"; do
    if [ -f "$file" ]; then
        echo "Loading profile from $file";
        . "$file"
    fi
done

# Load resources
for file in "/etc/X11/Xresources" "$HOME/.Xresources"; do
    if [ -f "$file" ]; then
        echo "Loading resource: $file"
        xrdb -nocpp -merge "$file"
    fi
done

# Load keymaps
for file in "/etc/X11/Xkbmap" "$HOME/.Xkbmap"; do
    if [ -f "$file" ]; then
        echo "Loading keymap: $file"
        setxkbmap `cat "$file"`
        XKB_IN_USE=yes
    fi
done

# Load xmodmap if not using XKB
if [ -z "$XKB_IN_USE" ]; then
    for file in "/etc/X11/Xmodmap" "$HOME/.Xmodmap"; do
        if [ -f "$file" ]; then
           echo "Loading modmap: $file"
           xmodmap "$file"
        fi
    done
fi

unset XKB_IN_USE

# Run all system xinitrc shell scripts.
xinitdir="/etc/X11/xinit/xinitrc.d"
if [ -d "$xinitdir" ]; then
    for script in $xinitdir/*; do
        echo "Loading xinit script $script"
        if [ -x "$script" -a ! -d "$script" ]; then
            . "$script"
        fi
    done
fi


if [ $# -eq 1 -a -n "$1" ]; then
  case $1 in
      spectrwm|spectr   ) SESSION=spectrwm;;
      cinnamon          ) SESSION=cinnamon-session;;
      i3|i3wm           ) SESSION=i3;;
      kde               ) SESSION=startplasma-x11;;
      awesome           ) SESSION=awesome;;
      xmonad            ) SESSION=xmonad;;
      deepin            ) SESSION=startdde;;
      xfce|xfce4        ) SESSION=startxfce4;;
      # xfce|xfce4        ) SESSION=xfce4-session;;
      # deepin            ) SESSION=/usr/bin/startlxde;;
      xfce|xfce4        ) SESSION=startxfce4;;
      # Nenhuma sessão conhecida, tenta como comando
      *                 ) SESSION=$1;;
  esac
else
# default session
# session=${1:-spectrwm}
	SESSION=spectrwm
	SESSION=cinnamon-session
	# SESSION=i3
fi
# Para iniciar com outro é:
# xinit sessão
# startx ~/.xinitrc sessão

exec $SESSION > /tmp/session.log 2>&1

echo "X session wrapper complete, running session $LXSESSION"

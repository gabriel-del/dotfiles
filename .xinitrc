# #!/bin/sh
# #
# <<<<<<< HEAD
# # LXDM wrapper to run around X sessions.

# exec 1>$HOME/PublicShare/log/xinit.log 2>&1

# echo "Running X session wrapper"

# # Load profile
# # for file in "/etc/profile" "$HOME/.profile" "/etc/xprofile" "$HOME/.xprofile"; do
# for file in "$HOME/.xprofile"; do
#     if [ -f "$file" ]; then
#         echo "Loading profile from $file";
#         . "$file"
#     fi
# done

# # Load resources
# for file in "/etc/X11/Xresources" "$HOME/.Xresources"; do
#     if [ -f "$file" ]; then
#         echo "Loading resource: $file"
#         xrdb -nocpp -merge "$file"
#     fi
# done

# # Load keymaps
# for file in "/etc/X11/Xkbmap" "$HOME/.Xkbmap"; do
#     if [ -f "$file" ]; then
#         echo "Loading keymap: $file"
#         setxkbmap `cat "$file"`
#         XKB_IN_USE=yes
#     fi
# done

# # Load xmodmap if not using XKB
# if [ -z "$XKB_IN_USE" ]; then
#     for file in "/etc/X11/Xmodmap" "$HOME/.Xmodmap"; do
#         if [ -f "$file" ]; then
#            echo "Loading modmap: $file"
#            xmodmap "$file"
#         fi
#     done
# fi

# unset XKB_IN_USE

# # Run all system xinitrc shell scripts.
# xinitdir="/etc/X11/xinit/xinitrc.d"
# if [ -d "$xinitdir" ]; then
#     for script in $xinitdir/*; do
#         echo "Loading xinit script $script"
#         if [ -x "$script" -a ! -d "$script" ]; then
#             . "$script"
#         fi
#     done
# fi


# if [ $# -eq 1 -a -n "$1" ]; then
#   SESSION=$1
# else
# 	SESSION=lxqt
# fi

# case $SESSION in
#   spectrwm|spectr   ) SESSION=spectrwm;;
#   cinnamon          ) SESSION=cinnamon-session;;
#   i3|i3wm           ) SESSION=i3;;
#   kde               ) SESSION=startplasma-x11;;
#   #exec ck-launch-session dbus-launch --sh-syntax --exit-with-session startkde
#   awesome           ) SESSION=awesome;;
#   xmonad            ) SESSION=xmonad;;
#   deepin            ) SESSION=startdde;;
#   xfce|xfce4        ) SESSION=startxfce4;;
#   gnome	            ) export XDG_MENU_PREFIX=gnome- && SESSION=gnome-session;;
#   bspwm	            ) SESSION=bspwm;;
#   lxqt		    			) SESSION=startlxqt;;
#   lxde							) SESSION=startlxde;;
#   openbox						) SESSION=openbox-session
#   # Nenhuma sessao conhecida, tenta como comando
# esac

# exec  $SESSION &> $HOME/PublicShare/log/session.log 2>&1

# echo "X session wrapper complete, running session $LXSESSION"
# =======
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export DESKTOP_SESSION=plasma
exec startplasma-x11
# >>>>>>> garuda

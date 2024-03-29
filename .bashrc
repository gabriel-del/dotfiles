[[ $- != *i* ]] && return
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then exec startx ;fi
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] &&  /bin/startx
[[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] && exec fish

if [ -f ~/.aliases ]; then
source ~/.aliases
export PATH=$path
fi

[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*


[ -f  /opt/asdf-vm/asdf.sh ] && . /opt/asdf-vm/asdf.sh


# BEGIN_KITTY_SHELL_INTEGRATION
# if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

if test -n "$KITTY_INSTALLATION_DIR"; then
    export KITTY_SHELL_INTEGRATION="enabled"
    source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi




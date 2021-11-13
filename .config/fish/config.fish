if test -f /usr/share/fish/vendor_functions.d/fisher.fish
  if test -f ~/.aliases
    replay source ~/.aliases replay
    set -x PATH (/bin/echo "$path"  | string split ':')
  end
end

[ -f /opt/asdf-vm/asdf.fish ] && source /opt/asdf-vm/asdf.fish


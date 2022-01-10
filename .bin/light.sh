#!/bin/bash
# USAGE: ./light.sh up/down
step=2
program=xbacklight

case $program in
  xbacklight)
    volume(){ xbacklight -get ;}
    case $1 in
      up) xbacklight -inc $step ;;
      down) xbacklight -dec $step ;;
      set) xbacklight -set $2 ;;
    esac ;;
esac

bar="$(seq -s "─" $(($(volume) / 5)) | sed 's/[0-9]//g')"
dunstify -t 2000 -i "$theme/$icon"  -r 2593 -u normal "$(volume)    $bar"



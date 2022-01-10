#!/bin/bash
# USAGE: ./volume.sh up/down/toggle
step=2
# program=amixer
program=pactl
theme=breeze-dark
theme_path=/usr/share/icons/$theme/status/16

case $program in
  pactl)
     volume(){ pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $2 + 4  )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,';}
     # volume(){ pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $2 + 1  ));}

# echo "volume: $volume"
    case $1 in
      up) [[ $(volume) -lt 160 ]] && pactl set-sink-volume @DEFAULT_SINK@ +2% ;;
      down) pactl set-sink-volume @DEFAULT_SINK@ -2% ;;
      mute) pactl set-sink-volume @DEFAULT_SINK@ toggle ;;
      set) pactl set-sink-volume @DEFAULT_SINK@ "$2"% ;;
    esac ;;
  amixer)
    volume(){ amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1 ;}
    case $1 in
      up) [[ $(volume) -lt 160 ]] && amixer set Master $step%+ ;;
      down) amixer set Master $step%- ;;
      mute) amixer set Master toggle ;;
      set) amixer set 'Master' "$2"% ;;
    esac ;;
esac

if [[ $theme == breeze-dark ]] ; then
	if [[ $(volume) -gt 150 ]] ; then
	icon=audio-on.svg
	elif [[ $(volume) -gt 100 ]] ; then
	icon=audio-volume-high.svg
	elif [[ $(volume) -gt 50 ]] ; then
	icon=audio-volume-medium.svg
	elif [[ $(volume) -gt 0 ]] ; then
	icon=audio-volume-low.svg
	else
	icon=audio-volume-muted.svg
	fi
elif [[ $theme == Adwaita ]] ; then
	if [[ $(volume) -gt 150 ]] ; then
	icon=audio-volume-overamplified-symbolic.symbolic.png
	elif [[ $(volume) -gt 100 ]] ; then
	icon=audio-volume-high-symbolic.symbolic.png
	elif [[ $(volume) -gt 50 ]] ; then
	icon=audio-volume-medium-symbolic.symbolic.png
	elif [[ $(volume) -gt 0 ]] ; then
	icon=audio-volume-low-symbolic.symbolic.png
	else
	icon=audio-volume-muted-symbolic.symbolic.png
	fi
fi

bar=$(seq -s "─" $(($(volume) / 5)) | sed 's/[0-9]//g')
dunstify -t 2000 -i "$theme_path/$icon"  -r 2593 -u normal "$(volume)    $bar"



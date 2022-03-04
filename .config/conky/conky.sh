#!/bin/sh
# set -x
killall -q conky
sleep 1

trap "kill 0" EXIT
conky -q -c ~/.config/conky/right &
conky -q -c ~/.config/conky/left & 
wait

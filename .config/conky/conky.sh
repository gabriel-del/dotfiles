#!/bin/sh
# set -x
killall -q conky
sleep 1
conky -q -c ~/.config/conky/right &
conky -q -c ~/.config/conky/left & exit

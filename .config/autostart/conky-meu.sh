#!/bin/sh
# set -x
sleep 1
conky -q -c ~/.config/conky/conkyrc-direita &
conky -q -c ~/.config/conky/conkyrc-esquerda & exit

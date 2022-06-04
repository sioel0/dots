#!/bin/bash

picom -b &
nitrogen --restore &
setxkbmap us -variant altgr-intl &
telegram-desktop -startintray &
dunst &
/home/sioel0/gits/dwm-bar/dwm_bar.sh &
/home/sioel0/.scripts/screen &
sleep 2; xmodmap ~/.Xmodmap &

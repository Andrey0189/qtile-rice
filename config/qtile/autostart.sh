#!/bin/sh

picom \
--experimental-backends \
--vsync \
--animations \
--animation-for-open-window zoom \
--animation-stiffness 250 \
--animation-dampening 25 \
--backend glx \
--glx-no-stencil -b

setxkbmap us,ru -option grp:caps_toggle

feh --bg-scale ~/.config/qtile/wallpaper.png

~/.config/qtile/pw

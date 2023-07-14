#!/bin/sh

if [ -d ~/.config/rofi ]; then
  mv -v ~/.config/rofi ~/.config/rofi-old
fi

if [ -d ~/.config/qtile ]; then
  mv -v ~/.config/qtile ~/.config/qtile-old
fi

if [ -d ~/.config/dunst ]; then
  mv -v ~/.config/dunst ~/.config/dunst-old
fi

if [ -f ~/.Xresources ]; then
  mv -v ~/.Xresources ~/.Xresources.old
fi

cp -v ./config/* ~/.config
cp -v .Xresources ~/

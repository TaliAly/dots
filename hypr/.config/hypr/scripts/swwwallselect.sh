#!/bin/bash

dir=$HOME/Wallpaper
entries=$(ls $dir)


selected=$(ls $dir | while read A ; do  echo -en "$A\x00icon\x1f$dir/$A\n"; done | rofi -dmenu -show-icons -p "Select wallpaper: " -config "~/.config/rofi/themes/wallselect.rasi")

if [[ selected != "" && "$dir/$selected" != "$dir/" ]]; then
  swww img $dir/$selected --transition-fps 60 --transition-type center --transition-duration 1
  flavours generate dark $dir/$selected
  flavours apply generated
fi


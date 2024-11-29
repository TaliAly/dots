#!/usr/bin/env bash

rofi_command="rofi -theme themes/powermenu.rasi"

# Options
shutdown=" "
reboot=""
lock=" "
logout=" "


# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        exec systemctl poweroff -i;;
    $reboot)
        exec systemctl reboot;;
    $logout)
        exec hyprctl dispatch exit;;
esac

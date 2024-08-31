#!/usr/bin/bash

iconDir="$HOME/.icon/tmp"

function get_volume {
  amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function send_notification {
  volume=`get_volume`

  bar=$(seq --separator="─" 0 "$((volume / 6))" | sed 's/[0-9]//g')
  spaces=$(seq --separator=" " 0 "$(( 17 - (volume / 6) ))" | sed 's/[0-9]//g')

  notify-send -a "volume" -u normal -h string:x-canonical-private-synchronous:anything "${bar}${spaces} $volume%"
}

function change_volume {
  amixer set Master "$1"

  muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
  # todo to replace pactl from this, since everything can be done with amixer


  if [[ "$muted" == "yes" ]]; then
    amixer set Master toggle
  fi
  send_notification
}

case $1 in
  "mute") amixer set Master toggle;;
  "mute-mic") amixer set Capture toggle;;
  *) change_volume $1;;
esac

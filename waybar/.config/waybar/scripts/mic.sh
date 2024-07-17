show() {
check_muted="$(pactl get-source-mute @DEFAULT_SOURCE@ | awk -F': ' '{print $2}')"
  if [ $check_muted == "yes" ]; then
    echo " "
  else
    echo " "
  fi
}

monitor() {
  # Monitors for changes in microphone state.
  pactl subscribe | /usr/bin/grep --line-buffered "'change' on source" |
    while read -r _; do
      show
    done
    exit
}

show
monitor

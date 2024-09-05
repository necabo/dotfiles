main() {
  while true; do
    datetime=$(date +'%A, %d-%m-%Y | %H:%M')
    msg="$(volume) | ${datetime}"
    echo $msg
    sleep 1
  done
}

# TODO: write function for volume output (icon that respects mute status and volume if not muted)
volume() {
  vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
  percent=$(bc <<<"$(echo $vol | awk '/Volume:/ { print $2 }') * 100 / 1")
  echo "${percent}%"
}

# TODO: get window titles back
# swaymsg -m '["window"]' | jq -r '.container.name'

main

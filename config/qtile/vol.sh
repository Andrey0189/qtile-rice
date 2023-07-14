#!/bin/sh

mutecmd() {
  pactl set-sink-mute 0 toggle
}

upcmd() {
  pactl set-sink-volume 0 +5%
}

downcmd() {
  pactl set-sink-volume 0 -5%
}

if [ "$1" = "mute" ]; then
  mutecmd
elif [ "$1" = "up" ]; then
  upcmd
else
  downcmd
fi

msgTag="volumechange"

volume="$(pactl get-sink-volume 0 | awk '{print $5}' )"
mute="$(pactl get-sink-mute 0 | awk '{print $2}' )"


if [ "$mute" = "yes" ]; then
    # Show the sound muted notification
    notify-send -a "changeVolume" -h string:x-dunst-stack-tag:$msgTag "Volume muted" --expire-time=1000 
else
    # Show the volume notification
    notify-send -a "changeVolume" -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: ${volume}" --expire-time=1000
fi

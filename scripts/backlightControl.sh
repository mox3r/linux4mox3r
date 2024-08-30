#!/bin/sh
#ChangeBrightness

msgTag="myBrightness"

brightnessctl s "$@" > /dev/null


brightness="$(brightnessctl | grep -i "Current" | awk '{print $4}' | sed 's/[^0-9]*//g')"


notify-send -a "changeBrightness" -u low  -h string:x-dunst-stack-tag:$msgTag  -h int:value:"$brightness" "Brightness: ${brightness}"

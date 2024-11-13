#!/bin/sh
#I'm really lazy ;P

gammastep -O 3500 >/dev/null 2>&1 &
if [[ -z "$1" ]]; then
  echo ":: Timer: 1h"
  sleep 1h
else
  echo ":: Timer: $1"
  sleep $1
fi

killall gammastep
sleep 5
echo ":: Good night"
systemctl suspend

#!/bin/sh
#I'm really lazy ;P


if [[ ! -z "$(pidof gammastep)" ]]; then
  killall gammastep >/dev/null 
fi  
  echo ":: Starting"
  
  gammastep -O 3500 >/dev/null 2>&1 &
  
  if [[ -z "$1" ]]; then
    echo ":: Timer: 1h"
    sleep 1h
  else
    echo ":: Timer: $1"
    sleep $1
  fi

  pkill -e gammastep >/dev/null 2>&1
  
  echo ":: Good night"
  systemctl suspend



  

#!/bin/sh

WTTR="$HOME/.cache/wttr.tmp"

touch $WTTR
curl wttr.in/Minsk?lang=ru > $WTTR 

clear

head -7 $WTTR

rm -rf  $WTTR

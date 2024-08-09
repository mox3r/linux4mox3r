#!/bin/sh

WTTR="$HOME/.cache/wttr.tmp"

curl wttr.in/Minsk?lang=ru > $WTTR 

clear

if [[ $1 == a ]]; then
	cat $WTTR
else 
	head -7 $WTTR
fi

rm -rf  $WTTR

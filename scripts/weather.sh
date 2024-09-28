#!/bin/sh

WTTR="$HOME/.cache/wttr.tmp"

curl --silent wttr.in/Minsk?lang=ru > $WTTR 

clear

if [[ $1 == all ]]; then
	cat $WTTR
elif [[ $1 == v2 ]] ||
	[[ $1 == 1 ]] ||
	[[ $1 == 2 ]] || 
	[[ $1 == 3 ]] ||
	[[ $1 == 4 ]]; then
	curl --silent wttr.in/Minsk?format=$1
else 
	head -7 $WTTR
fi

rm -rf  $WTTR

#!/bin/sh

clear

if [[ $1 == all ]]; then
	curl --silent https://ru.wttr.in/Minsk?Q
elif [[ $1 == v2 ]] ||
	[[ $1 == 1 ]] ||
	[[ $1 == 2 ]] ||
	[[ $1 == 3 ]] ||
	[[ $1 == 4 ]]; then
	curl --silent https://ru.wttr.in/Minsk?format=$1
else
	curl --silent https://ru.wttr.in/Minsk?Q1
fi

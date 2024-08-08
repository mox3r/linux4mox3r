#!/bin/sh

clear

echo ":: Cleanup!"

sudo pacman -Rns $(pacman Qtdq)

yay -Scc

echo ":: Cleanup complete!"

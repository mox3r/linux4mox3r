#!/bin/bash

# -----------------------------------------------------
# Set defaults
# -----------------------------------------------------

force_generate=0
generated_versions="$HOME/.cache/l4m-wallpaper-generated"
cache_file="$HOME/.cache/current_wallpaper"
blurred_wallpaper="$HOME/.cache/blurred_wallpaper.png"
square_wallpaper="$HOME/.cache/square_wallpaper.png"
rasi_file="$HOME/.cache/current_wallpaper.rasi"
blur_file="$HOME/dotfiles/.settings/blur.sh"
wallpaper=".cache/l4m-wallpaper-generated/default.jpg"
blur="50x30"

# Create folder with generated versions of wallpaper if not exists
if [ ! -d $generated_versions ]; then
    mkdir $generated_versions
fi

# -----------------------------------------------------
# Get selected wallpaper
# -----------------------------------------------------

cd Pictures/wallpaper
cp $(ls | shuf -n 1) $generated_versions/default.jpg
cd ~

# -----------------------------------------------------
# Get wallpaper filename
# -----------------------------------------------------
wallpaper_filename=$(basename $wallpaper)
echo ":: Wallpaper Filename: $wallpaper_filename"

# -----------------------------------------------------
# Execute pywal
# -----------------------------------------------------

echo ":: Execute pywal with $wallpaper"
wal -q -i $wallpaper
source "$HOME/.cache/wal/colors.sh"

# -----------------------------------------------------
# Write hyprpaper.conf
# -----------------------------------------------------

echo ":: Setting wallpaper with $used_wallpaper"
killall hyprpaper
hyprpaper &
>/dev/null 2>&1

# -----------------------------------------------------
# Created blurred wallpaper
# -----------------------------------------------------

echo ":: Generate new cached wallpaper blur-$blur-$wallpaper_filename with blur $blur"
magick $wallpaper -resize 75% $blurred_wallpaper
echo ":: Resized to 75%"
if [ ! "$blur" == "0x0" ]; then
    magick $blurred_wallpaper -blur $blur $blurred_wallpaper
    cp $blurred_wallpaper $generated_versions/blur-$blur-$wallpaper_filename.png
    echo ":: Blurred"
fi
cp $generated_versions/blur-$blur-$wallpaper_filename.png $blurred_wallpaper

# -----------------------------------------------------
# Created square wallpaper
# -----------------------------------------------------

echo ":: Generate new cached wallpaper square-$wallpaper_filename"
magick $wallpaper -gravity Center -extent 1:1 $square_wallpaper
cp $square_wallpaper $generated_versions/square-$wallpaper_filename.png
notify-send -u low -t 1000 "Wallpaper change..." "Done!"

#!/bin/bash

wallpaper_folder=~/Pictures/Wallpapers/

ls $wallpaper_folder | dmenu -i -l 40 -fn "System San Francisco Display" | xargs -I {} bash -c "feh --bg-scale $wallpaper_folder{}; wal -i $wallpaper_folder{};"

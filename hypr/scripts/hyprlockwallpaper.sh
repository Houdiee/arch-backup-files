#!/bin/bash

wallpaper=$(swww query)
current_wallpaper=$(echo "$wallpaper" | awk -F '/home' '{print "/home" $2}')

# Define the file path to be modified
config_file="/home/kerim/.config/hypr/hyprlock.conf"

# Replace line 3 with the current_wallpaper value
# We use awk to process and print lines, replacing line 3
awk -v new_line="	  path = $current_wallpaper" '
    NR==3 { print new_line; next } 
    { print }
' "$config_file" > tmpfile && mv tmpfile "$config_file"

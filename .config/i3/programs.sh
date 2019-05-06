#!/bin/bash

choices="ranger\nvim\nchrome\nblueman\npavucontrol"

chosen=$(echo -e "$choices" | dmenu -i -p "Select application:")

echo "$chosen"

case "$chosen" in
    ranger )
        exec gnome-terminal -e ranger ;;
    vim )
        exec gnome-terminal -e vim ;;
    chrome )
        exec google-chrome ;;
    blueman )
        exec blueman-manager ;;
    pavucontrol )
        exec pavucontrol ;;
esac

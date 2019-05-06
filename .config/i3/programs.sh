#!/bin/bash

choices="ranger\nvim\nchrome\nblueman\npavucontrol\nvimrc\nzshrc\ni3config"

chosen=$(echo -e "$choices" | dmenu -i -p "Select application:")

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
    vimrc )
        exec gnome-terminal -e "vim $HOME/.vimrc" ;;
    zshrc )
        exec gnome-terminal -e "vim $HOME/.zshrc" ;;
    i3config )
        exec gnome-terminal -e "vim $HOME/.config/i3/config" ;;
esac

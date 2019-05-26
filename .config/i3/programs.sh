#!/bin/bash

# Script to use dmenu for selecting most used programs

choices="ranger\nvim\nchrome\nblueman\npavucontrol\nvimrc\nzshrc\ni3config\nxdman\nqbittorrent\ncmus\ncava"

chosen=$(echo -e "$choices" | dmenu -i -p "Select application:")

case "$chosen" in
    ranger )
        exec gnome-terminal -e 'zsh -c "cat ~/.cache/wal/sequences; ranger; exec zsh"' ;;
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
    xdman )
        exec xdman ;;
    qbittorrent )
        exec qbittorrent ;;
    cmus )
        exec gnome-terminal -e cmus ;;
    cava )
        exec gnome-terminal -e cava ;;
esac

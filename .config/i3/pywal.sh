#!/bin/bash

# Script to change wallpapers and colorscheme using PYWAL

# Randomly selecting a number between 1 and 6
random_number=$((1 + RANDOM % 10))

# Setting the wallpaper randomly using PYWAL

case $random_number in
    1 )
        wal --vte -q -i "${HOME}/walls/walls_anime" ;;
    2 )
        wal --vte -q -i "${HOME}/walls/walls_cartoon" ;;
    3 )
        wal --vte -q -i "${HOME}/walls/walls_linux" ;;
    4 )
        wal --vte -q -i "${HOME}/walls/walls_movies" ;;
    5 )
        wal --vte -q -i "${HOME}/walls/walls_other" ;;
    6 )
        wal --vte -q -i "${HOME}/walls/walls_tv" ;;
    * )
        wal --vte -q -i "${HOME}/walls/pywal" ;;
esac

# Removing any previously used wallpaper
rm -rf "${HOME}/walls/pywal/"*

# Copying the current wallpaper so that it can be set during startup
cp "$(< "${HOME}/.cache/wal/wal")" "${HOME}/walls/pywal/."

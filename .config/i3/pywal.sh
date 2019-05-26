#!/bin/bash

# Script to change wallpapers and colorscheme using PYWAL

# Setting the wallpaper randomly using PYWAL
wal --vte -q -i "${HOME}/walls/wallpapers/"

# Removing any previously used wallpaper
rm -rf "${HOME}/walls/pywal/"*

# Copying the current wallpaper so that it can be set during startup
cp "$(< "${HOME}/.cache/wal/wal")" "${HOME}/walls/pywal/."

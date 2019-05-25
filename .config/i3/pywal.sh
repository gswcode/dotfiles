#!/bin/bash

wal --vte -q -i "${HOME}/walls/wallpapers/"
rm -rf "${HOME}/walls/pywal/"*
cp "$(< "${HOME}/.cache/wal/wal")" "${HOME}/walls/pywal/."

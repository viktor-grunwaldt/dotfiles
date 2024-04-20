#!/usr/bin/env sh

wp=$(find $HOME/Pictures/sonny -type f | shuf -n 1)
swaybg -i "$wp"
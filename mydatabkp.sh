#!/bin/bash

SRC_DIR="/home/SRC_DIR"
DST_DIR="/home/"

if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

if [ ! -d "$DST_DIR" ]; then
    mkdir -p "$DST_DIR"
fi

for file in "$SRC_DIR"/*; do
    cp "$file" "$DST_DIR"
    echo "File backup done"
done

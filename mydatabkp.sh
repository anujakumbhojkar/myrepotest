#!/bin/bash

SRC_DIR="/home/"
DST_DIR="/home/"

# Check if source directory exists first
if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

# Create destination directory if it doesn't exist
if [ ! -d "$DST_DIR" ]; then
    mkdir -p "$DST_DIR"
fi

# Copy files from source to destination
for file in "$SRC_DIR"/*; do
    cp "$file" "$DST_DIR"
done



#!/bin/bash

# Check for correct arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

SOURCE_DIR=$1
DEST_DIR=$2

# Ensure source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy all files from source to destination
cp -r "$SOURCE_DIR/"* "$DEST_DIR/"

# Replace occurrences of "SOURCE_DIR" with "DEST_DIR" inside copied files
for file in "$DEST_DIR"/*; do
    if [ -f "$file" ]; then
    	sed -i "s|$SOURCE_DIR|$DEST_DIR|g" "$file"
    fi
done

echo "Files copied from '$SOURCE_DIR' to '$DEST_DIR' and references updated."

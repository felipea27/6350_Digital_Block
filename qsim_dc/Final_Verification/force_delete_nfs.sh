#!/bin/bash

#rm -rf test*

echo "Searching for .nfs* files in the current directory..."
nfs_files=$(find . -type f -name ".nfs*")

if [ -z "$nfs_files" ]; then
    echo "No .nfs* files found."
    exit 0
fi

echo "Identifying processes using .nfs* files..."
for file in $nfs_files; do
    pids=$(lsof "$file" | awk 'NR>1 {print $2}')
    if [ -n "$pids" ]; then
        echo "Killing processes holding $file: $pids"
        kill -9 $pids 2>/dev/null
    fi
done

echo "Waiting for processes to release files..."
sleep 2

echo "Deleting .nfs* files..."
find . -type f -name ".nfs*" -exec rm -f {} \;

echo "Cleanup complete!"


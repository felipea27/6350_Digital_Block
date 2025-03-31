#!/bin/bash

# Find all directories in the current directory
for dir in */; do
    (
        cd "$dir" && ./dc.sh
    )
done

# Wait for all background processes to finish
wait


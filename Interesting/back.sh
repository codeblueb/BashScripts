#!/bin/bash

# Get the count of files and directories in the current directory
count=$(ls -1 | wc -l)

# Check if there is only one file or directory in the directory
if [ $count -eq 1 ]; then
    # Get the name of the file or directory
    name=$(ls)
    
    # Check if it's a directory
    if [ -d "$name" ]; then
        # Change directory to the parent directory
        cd ..
        echo "Changed directory to $(pwd)"
    else
        # Change directory to the file's location
        cd "$(dirname "$name")"
        echo "Changed directory to $(pwd)"
    fi
else
    echo "There are either zero or multiple files or directories in the directory."
fi


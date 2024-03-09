#!/bin/sh
# # Get the count of directories in the current directory
# dir_count=$(find . -maxdepth 1 -type d -exec basename {} \; | wc -l)
#
# # Check if there is only one directory in the current directory
# if [ $dir_count -eq 2 ]; then
#     # Get the name of the directory
#     dir_name=$(find . -maxdepth 1 -type d -exec basename {} \;)
#     
#     # Change directory to the directory's location
#     cd "$dir_name" && echo "Changed directory to $(pwd)"
# elif [ $dir_count -gt 2 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi
#
#

# Get the count of directories in the current directory
# dir_count=$(find . -maxdepth 1 -type d | wc -l)
#
# # Check if there is only one directory in the current directory
# if [ $dir_count -eq 2 ]; then
#     # Get the name of the directory
#     dir_name=$(find . -maxdepth 1 -type d -printf "%f\n")
#     
#     # Change directory to the directory's location
#     cd "$dir_name" && echo "Changed directory to $(pwd)"
# elif [ $dir_count -gt 2 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi
#



# Count the number of directories in the current directory
# dir_count=$(find . -maxdepth 1 -type d | wc -l)
#
# # Check if there is only one directory (excluding the current directory '.')
# if [ $dir_count -eq 2 ]; then
#     # Find the directory and change to it
#     target_dir=$(find . -maxdepth 1 -mindepth 1 -type d)
#     cd "$target_dir" && echo "Changed directory to $(pwd)"
# elif [ $dir_count -gt 2 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi


# Get the list of directories in the current directory
# directories=$(find . -maxdepth 1 -type d | wc -l)
#
# # Check if there is only one directory in the current directory
# if [ $directories -eq 2 ]; then
#     # Get the name of the directory
#     dir_name=$(find . -maxdepth 1 -type d -not -name "." -exec basename {} \;)
#     
#     # Change directory to the directory's location
#     cd "$dir_name" && echo "Changed directory to $(pwd)" || echo "Failed to change directory."
# elif [ $directories -gt 2 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi


# Count the number of directories in the current directory
# dir_count=$(find . -maxdepth 1 -type d -not -name '.' | wc -l)
#
# # Check if there is only one directory (excluding the current directory '.')
# if [ $dir_count -eq 1 ]; then
#     # Find the directory and change to it
#     target_dir=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.')
#     cd "$target_dir" && echo "Changed directory to $(pwd)" || echo "Failed to change directory."
# elif [ $dir_count -gt 1 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi


# Get the list of directories in the current directory
# directories=$(find . -maxdepth 1 -type d -not -name '.')
#
# # Count the number of directories
# dir_count=$(echo "$directories" | wc -l)
#
# # Check if there is only one directory in the current directory
# if [ $dir_count -eq 1 ]; then
#     # Change directory to the first directory found
#     cd "$directories" && echo "Changed directory to $(pwd)" || echo "Failed to change directory."
# elif [ $dir_count -gt 1 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi


# Get the list of directories in the current directory
# directories=$(find . -maxdepth 1 -type d -print -quit)
#
# # Count the number of directories
# dir_count=$(echo "$directories" | wc -l)
#
# # Check if there is only one directory in the current directory
# if [ $dir_count -eq 1 ]; then
#     # Change directory to the first directory found
#     cd "$directories" && echo "Changed directory to $(pwd)" || echo "Failed to change directory."
# elif [ $dir_count -gt 1 ]; then
#     echo "There are multiple directories in the directory."
# else
#     echo "There are either zero directories in the directory or the script is run from within a directory."
# fi



# Get the list of directories in the current directory
directories=$(find . -maxdepth 1 -type d -exec basename {} \;)

# Count the number of directories
dir_count=$(echo "$directories" | wc -l)

# Check if there is only one directory in the current directory
if [ $dir_count -eq 2 ]; then
    # Change directory to the directory's location
    cd "$directories" && echo "Changed directory to $(pwd)" || echo "Failed to change directory."
elif [ $dir_count -gt 2 ]; then
    echo "There are multiple directories in the directory."
else
    echo "There are either zero directories in the directory or the script is run from within a directory."
fi


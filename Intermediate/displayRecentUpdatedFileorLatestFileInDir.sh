#!/bin/bash

echo "Enter the directory path"
read path;

ls -lrt $path | grep ^- | awk "END{print $NF}"

# Description: Using ls -lrt we will get the sorted list 
# of file and using awk we can print the latest filename
#
# Write a script that will display the last (recently) updated 
# file or the latest file in the directory given by the user ?

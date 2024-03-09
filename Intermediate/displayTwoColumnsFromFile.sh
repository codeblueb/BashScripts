#!/bin/bash

df -k | awk '{print $6,$5}' | sort -k2 -n | grep -v Use%

# Write a script that will display 2 Columns (Mounted and Used%) 
# , mount name and disk usage percentage in sorted order from low used % to high % ?
#
#
# Description: df command is used to check disk space and awk will help to filter 
# specific columns from the output which we can sort using sort -k2 command

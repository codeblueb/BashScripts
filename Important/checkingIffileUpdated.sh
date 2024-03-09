#!/bin/sh

file=""

# get the modification time
last_modified=$(stat -c %Y "$file")

# get current time
current_time=$(date +%s)

# calculate the time difference
time_diff=$((current_time - last_modified))

# Define a threshold for what you consider is updated 
# for example: if the file has been updated in the last 24 hours 

threshold=$((24 * 3600))

if [ "$time_diff" -le "$threshold" ]; then
    echo "file been updated"
else
    ehco "file not been updated"
fi



# =================================
# you have another way to check time
last_modified_hour=$((date -d @"$last_modified" +%H))

if [ "$last_modified_hour" -eq 19 ]; then
    echo "better way to check if the file has been updated"
else
    echo "better way to check fi the file has not been updated"
fi

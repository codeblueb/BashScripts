#!/bin/bash


cp /var/log/*.log /tmp/

ls /tmp/*.log while read line; do
    sed -i 's/host/Machine/1' $line
done

# Write a script to copy all .log files from /var/log to /tmp direcory. 
# Once all files copied to /tmp directory, replace the first occurrence 
# of "host" keyword with "Machine" keyword in all .log files (if host keyword 
# is repeated multiple times within single row, then first host keyword will be replaced) ?

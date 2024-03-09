#!/bin/bash

grep -R --exclude-dir=dir "error" /var/log/*.log | awk -F: '{print $1}' | sort | uniq

# Description: We can use grep to grep "error" keyword from *.log files , then using awk 
# we can print the filenames. Once we have the file names we can apply uniq to remove 
# the duplicate file names.

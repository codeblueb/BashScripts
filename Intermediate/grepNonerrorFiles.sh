#!/bin/bash


grep -v -R --exclude-dir=dir "error" /var/log/*.log | awk -F: '{print $1}' | sort | uniq

# Description: We can use grep -v command to get those files which are not having "error" 
# keyword in *.log files , then using awk we can print the filenames. Once we have the file 
# names we can apply uniq to remove the duplicate file names.

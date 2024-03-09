#!/bin/bash

grep -R --exclude-dir=dir "error" /var/log/*.log | awk -F: '{print $1}' | sort | uniq | awk -F/ '{print $4}' | while read line; do
    cp /var/log/$line $line
done

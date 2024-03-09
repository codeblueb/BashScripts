#!/bin/bash

file_name=output.txt

echo "Enter what you want to write to file"

while read line
do 
    echo $line >> $file_name
done

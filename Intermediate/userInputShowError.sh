#!/bin/bash

if [ $# -ne 2 ]
then 
    echo "Please provide the 2 numbers as argument"
    exit 1
fi

echo $(($1 + $2))


# Write a script that will take 2 command line arguments 
# (numbers) from user and then print the sum on screen ?

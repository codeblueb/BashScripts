#!/bin/bash

mkdir odd
mkdir even

for (( n=1; n<20; n++ ))
do 
    if (( $n%2==0 ))
    then
        touch even/$n.txt
    else
        touch odd/$n.txt
    fi
done


# Description: Using for loop we can loop from 1 to 20, if number is divisible by 2 
# then its even and we can use touch command to create the file inside even/ directory,
# else file will be created under odd/ directory

#!/bin/bash

echo "Enter a number"

read num

if [[ $((num%3)) == 0 && $((num%5)) == 0 ]]
then 
    echo "Divisble"
else
    echo "Not Divisble"
fi

#!/bin/bash

echo "Enter a number"

read num

if [[ $((num%3)) == 0 || $((num%5)) == 0 ]]
then
    echo "Divisable"
else
    echo "Not Divisable"
fi

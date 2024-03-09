#!/bin/bash

echo "Enter the number to select color"
echo "1 - Blue"
echo "2 - Yellow"
echo "3 - Cyan"
echo "4 - Orange"
read color

case $color in
    1) echo "Blue is selected";;
    2) echo "Yellow is selected";;
    3) echo "Cyan is selected";;
    4) echo "Orange is selceted";;
    *) echo "Please choose correct one";;
esac 


# Write a script that will allow the user choose a color 
# and shows a comment against that color (using case statement) ?

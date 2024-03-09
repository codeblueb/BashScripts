#!/bin/bash

GREET="Howdy Partner"

echo $GREET

echo "Name: $1";
echo "Age: $2";

while true; do
    read -p "Do you wish to drink beer " yn
    case $yn in 
        [yn]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

if [ $2 -lt 21 ]; then
    echo "You are too yound to use this"
else
    echo "Enjoy your beer $1!"
fi

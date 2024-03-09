#!/bin/bash



if [ "$#" -ne 1 ]; then

    echo "Invalid number of parameters"

    exit 1

fi



if [[ $(command -v $1) ]]; then

    echo "Yes , $1 found on local system"

else

    echo "No , $1 not found on local system"

fi


# Script will take single argument only which will be command name [like sed, awk etc.]
# If no. of arguments are more or less than 1 than script will exit with error.
# Else Script will search on local system if system has that command available or not, 
# and then using If else you need to notify the user about the availability of the command.

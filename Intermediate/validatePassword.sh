#!/bin/bash

echo "Please enter the password"
read password

len="${#password}"

if [ $len -ge 10 ]
then
    if echo "$password" | grep -q [A-Z] && echo "$password" | grep -q [a-z]
    then
        echo "password Validated"
    else
        echo "Password must have small and upper characters"
    fi
else
    echo "Password must have 10 characters"
fi


# Write a script that will validate password strength. Here are few conditions that needs to be validated
#
# · Minimum length to be 10 characters
#
# · Must have both the Small and Upper case letters#

# Description: We can use if condition to validate the length of password , 
# if length requirement is fine then we can check for upper and lower case condition

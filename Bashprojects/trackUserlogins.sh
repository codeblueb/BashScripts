#!/bin/bash

# create new directory if not exists
mkdir -p root/Users_login_data/

# get date in variable 
DATA=`date +'%m-%d-%Y-%H-%M'`

# echo $DATA

# Log the user data in a file

who | awk '{print $1,$3,$4,$5}' > root/Users_login_data/Users_$DATE.txt




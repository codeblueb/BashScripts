#!/bin/bash

echo "Enter username"
read username

echo "Enter password"
read password

if [[ $username == "admin" && $password == "admin" ]];
then 
    echo "Login Successfull"
else
    echo "Wrong login"
fi

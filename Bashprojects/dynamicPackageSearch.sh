#!/bin/bash

echo "Enter the package name: "
read package

echo "******************************"
ehco "Searching for package: $package"

yum search $package # this command to find can be used in ubuntu but not mac

# Create a script which can ask user to provide Linux package name as an input that user want to search.
#
# Then script will search for that package and print back the results to the user on screen.

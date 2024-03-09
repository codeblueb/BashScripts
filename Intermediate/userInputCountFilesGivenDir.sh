#!/bin/bash

echo "Enter directory path"
read dir

ls -l $dir | wc -l

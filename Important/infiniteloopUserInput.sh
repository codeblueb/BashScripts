#!/bin/bash

trap 'echo "Control-C cannot terminate this script."' INT

trap 'echo "Control-Z cannot terminate this script."' TSTP



echo "Enter a string (type 'EXIT' to exit)"

while (( 1 ))

do

       echo -n "Running..."

       read user_input



       if [[ "$user_input" = "EXIT" ]]

       then

           break

       fi

done



echo "Exiting as string matches"


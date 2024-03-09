#!/bin/bash



search() {

echo "************************************"

echo "Searching for package : $package_name"

yum search $package_name

}





install() {

echo "************************************"

echo "Installing package : $package_name"

yum -y install $package_name

}



remove(){

echo "************************************"

echo "Remove package : $package_name"

yum -y remove $package_name

}





echo "Please enter method you want to use: search or install or remove"

read method

echo "Enter the package name: "

read package_name



if [[ $method == "search" ]]

then

    search

elif [[ $method == "install" ]]

then

    install

elif [[ $method == "remove" ]]

then

   remove

else

    echo -e "Please select valid method:\nsearch or install"

fi

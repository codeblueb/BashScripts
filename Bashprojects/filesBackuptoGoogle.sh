#!/bin/bash

wget https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_linux_386.tar.gz

tar -xvf gdrive_2.1.1_linux_386.tar.gz

./gdrive about

./gdrive upload FILE_NAME


# Do not run this for now until resolving the gdrive expected and actual finding conflicting SHA values

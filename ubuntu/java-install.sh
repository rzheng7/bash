#!/bin/bash

##
## install java on ubuntu system
## 
## rz 1/20/2014
##

if ! which java ; then
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java7-installer -y
fi

echo "=====INFO: Testing Java Installation"
java -version

if [ $? -eq 0 ]; then
  echo "=====INFO: Java installed succesfully" 
else
  echo "=====ERROR: Java installation failed"
fi

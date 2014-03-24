#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer -y

echo 
echo "INFO: Testing Java Installation"
java -version

[ #? -eq 0 ] && echo "INFO: Java installed succesfully" || echo "ERROR: Java installation failed"

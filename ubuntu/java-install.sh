#!/bin/sh

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer -y

echo 
echo "INFO: Testing Java Installation"
java -version

if [ #? -eq 0 ]; then 
  echo "Java installed succesfully"
else
  echo "Java installation failed"
fi
echo



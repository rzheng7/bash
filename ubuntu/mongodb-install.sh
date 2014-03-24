#!/bin/bash

## 
## install mongodb on ubuntu system
##
## Rong 7/11/2013
##

## only if mongo is not exit install
if ! which mongo ; then
   sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
   echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
   sudo apt-get update
   sudo apt-get install mongodb-10gen
else
   echo "MongoDB client installed"
fi


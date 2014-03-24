#!/bin/bash 

# Install all the Python module files.
# To see the modules already installed, "pip freeze"

if [ ! which pip ]; then 
   sudo apt-get install python-pip
fi

sudo pip install Fabric
sudo pip install Jinja2
sudo pip install MarkupSafe
sudo pip install RBTools
sudo pip install argparse

# Python MicroFramework
sudo pip install bottle
sudo pip install flask

sudo pip install ecdsa
sudo pip install ipython
sudo pip install jira-python
sudo # pip install matplotlib
sudo # pip install scipy
sudo pip install nose
sudo # pip install numpy
sudo pip install oauthlib
sudo pip install paramiko
sudo pip install pexpect
sudo pip install prettytable
sudo pip install pycrypto
sudo pip install pymongo
sudo pip install pyparsing
sudo pip install python-dateutil
sudo pip install requests
sudo pip install requests-oauthlib
sudo pip install simplejson
sudo pip install six
sudo pip install texttable
sudo pip install tlslite
sudo pip install tornado
sudo pip install wsgiref
sudo pip install orderedDict
sudo pip install xmlbegone

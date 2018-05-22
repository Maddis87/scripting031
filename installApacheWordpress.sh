#!/bin/bash

#A script that installs Apache2 if it's not already installed

source funcApacheWordpress.sh

header "Updating"

sudo apt-get update
sudo apt-get upgrade

header "Apache"

installApache2

header "curl"

undoInstall "apache2"


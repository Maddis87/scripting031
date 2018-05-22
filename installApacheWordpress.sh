#!/bin/bash

#A script that installs Apache2 if it's not already installed

source funcApacheWordpress.sh

header "Updating"

sudo apt-get update

header "Apache"

installApache2

undoInstall "apache2"



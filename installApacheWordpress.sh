#!/bin/bash

#A script that installs Apache2 if it's not already installed

source funcApacheWordpress.sh

header "Updating"
upDate

header "apache2"
installApache2
addServerName "194.47.207.121"

header "curl"
checkForCurl

#header "WordPress"

#undoInstall "apache2"


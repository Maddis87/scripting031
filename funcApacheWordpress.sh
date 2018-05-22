#!/bin/bash

function header
{
  echo "================== $1 =================="
  echo ""
}

function installApache2
{
  if which apache2 > /dev/null; then
    echo "apache2 is already installed, skipping..."
  else 
  echo "Installing apache2"
    sudo apt-get install -y apache2 < /dev/null
  fi
}

function checkForCurl {
  if which curl > /dev/null; then
    echo "curl is already installed, skipping..."
  else 
  echo "Installing curl"
    sudo apt-get install -y curl < /dev/null
  fi
}

function undoInstall {
  sudo apt-get remove $1 < /dev/null
  echo "uninstalling $1"
}
#!/bin/bash

function header
{
  echo "================== $1 =================="
  echo ""
}

function installApache2
{
  if which Apache2 > /dev/null; then
    echo "Apache2 is already installed, skipping..."
  else 
    sudo apt-get install Apache2
  fi
}
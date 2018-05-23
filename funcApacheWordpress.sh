#!/bin/bash

function header
{
  echo ""
  echo "================== $1 =================="
  echo ""
}

function upDate {
  sudo apt-get update > /dev/null
  echo "updated.................."
  sudo apt-get upgrade > /dev/null
  echo "upgraded................."
}
function installApache2
{
  if which apache2 > /dev/null; then
    echo "apache2 is already installed, skipping..."
  else 
  echo "Installing apache2"
    sudo apt-get install -y apache2 > /dev/null
  fi
}

function checkForCurl {
  if which curl > /dev/null; then
    echo "curl is already installed, skipping..."
  else 
  echo "Installing curl"
    sudo apt-get install -y curl > /dev/null
  fi
}

function undoInstall {
  sudo apt-get autoremove -y $1 > /dev/null
  echo ""
  echo "removing $1"
}

function configFirewall {
  echo ""
  echo "Configuring firewall with Apache Full and OpenSSh"
  echo ""
  sudo ufw allow "Apache Full"
  sudo ufw allow "OpenSSH"
  sudo ufw enable
  sudo ufw status
}
function installMySQLServer
{
  if which mysql.server > /dev/null; then
    echo "MySQL is already installed, skipping..."
  else 
  echo "Installing MySQL"
   sudo apt-get install -y mysql-server > /dev/null
   mysql_secure_installation
  fi
}

function installPHP
{
sudo apt-get -y install php libapache2-mod-php php-mcrypt php-mysql > /dev/null
echo "PHP installation is finished"
echo ""
echo "Move to dir sudo nano /etc/apache2/mods-enabled/dir.conf"
echo "and reorder the server to look for .php file first."
echo "when finished with reordering the index, restart the server"
echo "with command sudo systemctl restart apache2"
}
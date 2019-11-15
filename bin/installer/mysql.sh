#!/bin/bash
echo "# --------------------------------------------------------------------- #"
echo "# Installing MySQL..."
echo "# --------------------------------------------------------------------- #"
sudo sudo apt-get install mysql-server -y
sudo mysql_secure_installation

# This is a simple Bash Script I wrote to ease the process of installing LAMP
# The target version is Ubuntu 18.04
# Written by Martin C.A. ENG, me@martineng.info

# Update packages and Upgrade System
echo -e "Updating..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Installing Apache
echo -e "Getting Apache2..."
sudo apt-get install apache2 -y

# Adjusting Firewall to Allow Web Traffic
echo -e "Configuring Firewall..."
sudo ufw allow in "Apache Full"

# Installing MySQL
echo -e "Installing MySQL..."
sudo apt-get install mysql-server -y
echo -e "Executing MySQL Secure Installation..."
sudo mysql_secure_installation

# Installing PHP
echo -e "Installing PHP..."
sudo apt-get install php libapache2-mod-php php-mysql -y

# Installilng phpMyAdmin
echo -e "Installing phpMyAdmin..."
sudo apt-get install phpmyadmin php-mbstring php-gettext -y
sudo phpenmod mbstring

sudo systemctl restart apache2

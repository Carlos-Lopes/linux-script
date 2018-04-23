#!/bin/bash

cd ~/Downloads

# Install LAMP (Apache 2, Mysql, PHP 7.0)
sudo apt-get install -y apache2
sudo apt-get install -y mysql-server
sudo apt-get install -y phpmyadmin
sudo apt-get install -y php7.0 php7.0-cli php7.0-gd php7.0-zip
sudo apt-get install -y libapache2-mod-php7.0

# Composer 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Install Git
sudo apt-get install -y git

# Install WPS Office
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
sudo gdebi wps-office_10.1.0.5707~a21_amd64.deb

# Install WPS Font Pack
cd /tmp
git clone https://github.com/iamdh4/ttf-wps-fonts.git
cd ttf-wps-fonts
sudo bash install.sh
rm -rf /tmp/ttf-wps-fonts
cd ~/Downloads

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

# Numix Theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle

cd /tmp
git clone https://github.com/zagortenay333/numix-cinnamon.git
mv numix-cinnamon/Numix-Cinnamon ~/.themes
rm -rf ~/tmp/numix-cinnamon

cd ~/Downloads

# Node JS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo npm install -g npm@latest
sudo npm install -g recess
sudo npm install -g gulp
sudo npm install -g bower
sudo npm install -g @angular/cli



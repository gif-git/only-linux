#!/bin/bash

sudo apt-get update
sudo apt-get install network-manager-openvpn-gnome -y

sudo apt-get update
sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

sudo apt-get update
sudo apt-get install anydesk -y

sudo apt-get update
sudo apt-get install openssh-server -y

sudo apt-get update
sudo apt-get install vim -y

sudo apt-get update
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

sudo apt-get update
#wget https://repo.skype.com/latest/skypeforlinux-64.rpm

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

sudo apt-get update
sudo apt-get install git

sudo apt-get update

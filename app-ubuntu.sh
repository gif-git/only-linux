#!/bin/bash

sudo apt-get update

sudo apt-get install network-manager-openvpn-gnome -y

sudo apt-get update

sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -

sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

sudo apt-get update

sudo apt-get install anydesk

sudo apt-get update

sudo apt-get install openssh-server

sudo apt-get update

sudo apt-get install vim

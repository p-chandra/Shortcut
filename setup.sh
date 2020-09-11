#!/bin/bash

#install vpn
sudo apt install network-manager-openconnect network-manager-openconnect-gnome
sudo systemctl restart network-manager.service

#install 32bit libraries
sudo apt-get install gcc-multilib

#install vim
sudo apt install vim
#install git
sudo apt install git
#install nmap
sudo apt install nmap


#install pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh



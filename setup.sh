#!/bin/bash

#install curl
sudo apt install curl

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

#install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install --upgrade pip

#install pwntools
pip3 install pwntools

#install pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh


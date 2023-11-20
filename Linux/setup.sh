#!/bin/bash

#Update
sudo apt-get update
sudo apt-get upgrade

#Set your clock time based on internet
sudo apt-get install ntp

#update your distro
sudo apt-get -u dist-upgrade

#install curl
sudo apt install curl

#install nasm for assembly
sudo apt install nasm

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

#install tmux
sudo apt install tmux

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

#install checksec
sudo apt install checksec

#install java 11 JRE
sudo apt install default-jre

#Install java 11 JDK (Optional)
sudo apt install default-jdk

#Others
sudo apt-get install -y \
    cmake \
    findutils \
    libclang-dev \
    libc-dbg \
    libglib2.0-0 \
    libglib2.0-dev \
    make \
    netbase \
    python3-networkx \
    xz-utils \
    util-linux \
    gcc \
    g++

## Special Commands ##

#disable ASLR - this will auto enable after reboot
#echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

#enable ASLR
#echo 2 | sudo tee /proc/sys/kernel/randomize_va_space

#permanently disable ASLR
#Add a file /etc/sysctl.d/01-disable-aslr.conf and in the file write 
#kernel.randomize_va_space = 0

#When using git server inside private network, you might run into CAcert and CRLfile issue
#git config --global http.sslverify "false"

#update CA Cert.
#sudo apt-get install --reinstall ca-certificates
#sudo mkdir /usr/local/share/ca-certificates/cacert.org
#sudo wget -P /usr/local/share/ca-certificates/cacert.org http://www.cacert.org/certs/root.crt http://www.cacert.org/certs/class3.crt
#sudo update-ca-certificates
#git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt

#!/bin/bash
sudo apt-get update -y

# install vim
sudo apt install vim -y

# setup git
git config --global user.email "norman@normstorm.com"
git config --global user.name "Norman Tang"

# setup basic config preferences 
cp ~/configuration/.vimrc ~/
cp ~/configuration/.bashrc ~/
cp ~/configuration/.inputrc ~/
cp ~/configuration/doupdate.sh ~/
chmod u+x ~/doupdate.sh

# setup node 
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt install npm -y

# npm initialization
sudo npm config set init-author-email "norman@normstorm.com" -g
sudo npm config set init-author-name "Norman Tang" -g
sudo npm config set init-author-url "https://www.linkedin.com/in/normstorm/" -g

# setup python 
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt install python3.8 -y
sudo apt install gnome-tweaks -y # need this for setting up right mouse click on laptop trackpad
sudo snap install htop 
sudo apt install materia-gtk-theme -y

# install flatpak
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt-get update -y && sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y

sudo apt install net-tools -y # needed for netstat -tulpn
# WINE OPTIONAL 
# sudo apt install wine64 -y # needed for windows emulation

# setup some python and akamai stuff
sudo apt install python-pip -y
pip install edgegrid-python
sudo apt install httpie -y

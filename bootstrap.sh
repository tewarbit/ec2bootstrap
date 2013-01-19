#!/bin/bash
# run with sudo

#install erlang, git, make
sudo apt-get -y update
sudo apt-get -y install erlang erlang-doc
sudo apt-get -y install git
sudo apt-get -y install make

mkdir ~/work


# install blathery
cd ~/work
git clone https://github.com/tewarbit/blathery.git
cd blathery
chmod +x install.sh 
./install.sh 


# do some cleaning up
cd ~/work
rm -rf *
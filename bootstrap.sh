#!/bin/bash
# run with sudo

#install erlang, git, make
apt-get -y update
apt-get -y install erlang erlang-doc
apt-get -y install git
apt-get -y install make

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
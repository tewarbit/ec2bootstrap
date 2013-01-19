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
make
cd ..
mkdir -p /usr/local/lib/blathery
cp -r blathery/* /usr/local/lib/blathery


# do some cleaning up
cd ~/work
rm -rf *

echo
echo "------"
echo "Setup complete!"
echo "Successfully installed erlang, git, make and blathery"
echo
echo "Run /usr/local/lib/blathery/start.sh to run blathery"
echo "------"

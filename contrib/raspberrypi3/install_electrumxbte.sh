#!/bin/sh
###################
# install electrumxbte
###################

# Remove "raspi-copies-and-fills" as it breaks the upgrade process
sudo apt-get purge raspi-copies-and-fills

# upgrade raspbian to 'stretch' distribution
sudo echo 'deb http://mirrordirector.raspbian.org/raspbian/ testing main contrib non-free rpi' > /etc/apt/sources.list.d/stretch.list
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get autoremove

# install electrumxbte dependencies
sudo apt-get install python3-pip
sudo apt-get install build-essential libc6-dev
sudo apt-get install libncurses5-dev libncursesw5-dev
sudo apt install libreadline6-dev/stable libreadline6/stable
sudo apt-get install libleveldb-dev
sudo apt-get install git
sudo pip3 install plyvel

# install electrumxbte
git clone https://github.com/bitweb-project/electrumxbte.git
cd electrumxbte
sudo python3 setup.py install

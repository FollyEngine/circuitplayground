#!/bin/bash

sudo apt-get update
sudo apt-get --yes upgrade
sudo apt-get --yes install curl chromium git vim

curl -o adafruit-trinket.rules http://fi.gy/adafruit-trinket.rules
sudo cp adafruit-trinket.rules /etc/udev/rules.d/

#   sudo reload udev
# Or if that doesn't work try:
sudo udevadm control --reload-rules
sudo udevadm trigger

if ! getent passwd planting; then
	sudo adduser --ingroup dialout --disabled-password planting
fi
sudo adduser planting sudo
sudo adduser planting dialout
sudo adduser planting adm

sudo adduser $USER sudo
sudo adduser $USER dialout
sudo adduser $USER adm



#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install -yq curl

curl -o adafruit-trinket.rules https://raw.githubusercontent.com/FollyEngine/circuitplayground/master/adafruit-trinket.rules
sudo cp adafruit-trinket.rules /etc/udev/rules.d/

#   sudo reload udev
# Or if that doesn't work try:
sudo udevadm control --reload-rules
sudo udevadm trigger

sudo adduser $USER adm

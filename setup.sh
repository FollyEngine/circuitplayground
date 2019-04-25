#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install -yq curl chromium git vim

curl -o adafruit-trinket.rules http://fi.gy/adafruit-trinket.rules
sudo cp adafruit-trinket.rules /etc/udev/rules.d/

#   sudo reload udev
# Or if that doesn't work try:
sudo udevadm control --reload-rules
sudo udevadm trigger

sudo adduser $USER adm

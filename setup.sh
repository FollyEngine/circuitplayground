#!/bin/bash

apt-get update
apt-get install -yq curl

curl -o adafruit-trinket.rules https://raw.githubusercontent.com/adafruit/Trinket_Arduino_Linux/master/99-adafruit-boards.rules
sudo cp adafruit-trinket.rules /etc/udev/rules.d/

#   sudo reload udev
# Or if that doesn't work try:
sudo udevadm control --reload-rules
sudo udevadm trigger

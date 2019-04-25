# circuitplayground

2019 woodford planting village workshop

## Setup

there's a `setup.sh` script in this repository.

Use it to make sure the udev rules are setup so you can use WevUSB to directly upload to the circuit playground

Can run using 

```
curl https://raw.githubusercontent.com/FollyEngine/circuitplayground/master/setup.sh | sh
```

Then update the ciruit playground's firmware - see https://learn.adafruit.com/makecode/webusb

> *NOTE:* WebUSB is enabled on Chrome and Chromium - not firefox

use https://makecode.adafruit.com/?webusb=1#editor to use the webUSB connection

## Sources

The adafruit-trinket.rules comes from https://github.com/adafruit/Trinket_Arduino_Linux

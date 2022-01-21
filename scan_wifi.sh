#!/bin/sh

iwlist wlan0 scanning | egrep 'Cell |Encryption|Quality|Last beacon|ESSID' > /home/pi/logs/wifi_scan.txt

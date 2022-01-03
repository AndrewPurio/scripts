#!/bin/sh

sudo killall wpa_supplicant
sudo service dhcpcd restart
sudo wpa_supplicant -B -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf

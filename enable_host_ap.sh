#!/bin/sh

# Start Host Access Point and Persist on reboot
sudo systemctl enable hostapd
sudo systemctl start hostapd



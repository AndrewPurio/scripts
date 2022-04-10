#!/bin/sh

sudo docker stop rest-node
sudo docker container rm rest-node
sudo docker pull restnode/rest_node
sudo docker run -d -p 80:1880 -v /etc/machine-id:/etc/machine-id -v /tmp/.X11-unix:/tmp/.X11-unix -v /etc/avahi/services:/etc/avahi/services -v /etc/dnsmasq.conf:/etc/dnsmasq.conf -v /etc/hostapd:/etc/hostapd -v /home/pi/logs:/logs -v /etc/wpa_supplicant:/etc/wpa_supplicant -v /etc/dhcpcd.conf:/etc/dhcpcd.conf -v /etc/localtime:/etc/localtime:ro -v /home/pi/pipes:/pipes --device=/dev/gpiomem --device=/dev/i2c-1:/dev/i2c-1 --device=/dev/snd:/dev/snd --name rest-node --restart=always restnode/rest_node




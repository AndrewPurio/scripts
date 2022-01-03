\#!/bin/sh

sudo docker stop rest-node
sudo docker container rm rest-node
sudo docker pull restnode/rest_node
sudo docker run -d -p 80:1880 -v /home/pi/logs:/logs -v /etc/wpa_supplicant:/etc/wpa_supplicant -v /etc/dhcpcd.conf:/etc/dhcpcd.conf -v /etc/localtime:/etc/localtime:ro -v /home/pi/pipes/host_pipe:/pipes/host_pipe --device=/dev/gpiomem --device=/dev/i2c-1:/dev/i2c-1 --device=/dev/snd:/dev/snd  --name rest-node --restart=always restnode/rest_node




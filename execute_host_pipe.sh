#!/bin/sh

while true; do 
	eval "$(cat /home/pi/pipes/host_pipe)" >> "/home/pi/logs/execute_logs.txt"
done

#!/bin/bash

connection_status=`cat /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-HDMI-A-1/status`

if [ "$connection_status" = "connected" ]
then
	`/home/christian/.screenlayout/layout.sh`
	`notify-send "Screen connected to HDMI"`
elif [ "$connection_status" = "disconnected" ]
then
	`/home/christian/.screenlayout/single_screen.sh`
	`notify-send "Mo screen connected to HDMI"`
fi

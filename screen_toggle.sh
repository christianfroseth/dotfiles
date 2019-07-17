#!/bin/bash
connected_screens=`xrandr --query | grep " connected" | awk '{print $1}' `

if [[ "$connected_screens" = *"HDMI-1"  ]];then
	`~/.screenlayout/layout.sh`
	dunstify  "Changing screen layout" "Enabled screens $connected_screens"
else
	`~/.screenlayout/single_screen.sh`
	dunstify  "Changing screen layout" "Laptop display enabled"
fi

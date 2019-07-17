#!/bin/bash

STATUS=$(nordvpn status)

CONNECT_STATUS=$(echo "$STATUS" | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$CONNECT_STATUS" = "Connected" ]; then
	echo " " `echo "$STATUS" | grep IP | tr -d ' ' | cut -d ':' -f2`  "  " `echo "$STATUS" | grep Country | tr -d ' ' | cut -d ':' -f2`
else
	echo " VPN Disconnected"
fi



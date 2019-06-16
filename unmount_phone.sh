#!/bin/bash

result=$(fusermount -u ~/Cellphone)

if [ "$result" = "" ]
then
	`notify-send "Phone successfully unmounted"`
else
	`notify-send "Unable to unmount phone... $result"`
fi


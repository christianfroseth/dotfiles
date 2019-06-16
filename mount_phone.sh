#!/bin/bash

selected_phone=$(simple-mtpfs -l | dmenu -i -p "Which phone to mount?" |cut -d : -f 1)
simple-mtpfs --device "$selected_phone" ~/Cellphone

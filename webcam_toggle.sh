#!/bin/bash

pkill -f mpv || mpv --geometry=-0-0 --autofit=30% /dev/video0

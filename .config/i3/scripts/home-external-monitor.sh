#!/bin/sh
xrandr | grep 'HDMI1 connected' && xrandr --output eDP1 --primary --auto --output HDMI1 --mode 1600x900 --left-of eDP1 

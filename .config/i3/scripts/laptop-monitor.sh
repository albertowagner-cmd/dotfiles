#!/bin/sh
xrandr | grep 'HDMI1 disconnected' && xrandr --output eDP1 --primary --mode 1920x1080 --output HDMI1 --off

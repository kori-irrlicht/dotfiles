#!/usr/bin/env zsh

if [ `xrandr --query | grep '\bconnected\b' | wc -l` = "1" ]
then
    xrandr --output HDMI-1-1 --off
else
    xrandr --output HDMI-1-1 --auto --output HDMI-A-2 --auto --right-of HDMI-1-1
fi

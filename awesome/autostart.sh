#!/usr/bin/env zsh

function run {
	if ! pgrep $1 > /dev/null ;
	then
		$@&
	fi
}

run xrandr --output HDMI-1-1 --auto --output HDMI-A-2 --auto --right-of HDMI-1-1
run compton --config ~/.config/compton/compton.conf
run light-locker


#!/usr/bin/env zsh

function run {
	if ! pgrep $1 > /dev/null ;
	then
		$@&
	fi
}

run xrandr --output HDMI-1 --left-of VGA-1
run compton --config ~/.config/compton/compton.conf


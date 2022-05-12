#!/bin/sh

function run {
	if ! pgrep $1 ;
	then
	  $@&
	fi
}


run picom --unredir-if-possible --experimental-backends
dunst -conf /home/jorge/.config/dunst/qtilerc &
nm-applet &
cbatticon -i standard BAT1 &
volumeicon &

xinput set-prop 13 311 1

xinput set-prop 13 306 -0.8


xrandr --output HDMI-A-0 --primary --left-of eDP

feh --bg-fill /home/henry/Pictures/1490456083719.jpg
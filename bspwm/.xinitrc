#!/bin/sh

graphics() {
	xrandr --auto --output HDMI1 
	xrandr --auto --output eDP1 

	xrdb -load ~/.Xresources

	hsetroot -solid "#1d1d1d"
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
	start-pulseaudio-x11
	urxvtd -q -f -o 
}
run() {
	setwp
	bar &
	exec bsp

}
graphics
env
run

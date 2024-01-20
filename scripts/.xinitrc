#!/usr/bin/env bash

export PATH=${PATH}:${HOME}/.local/bin

wm.start_sxhkd
wm.start_composite
wm.start_background
wm.start_polybar
wm.start_bspwm

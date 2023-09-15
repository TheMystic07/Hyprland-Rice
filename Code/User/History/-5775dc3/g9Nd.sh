#!/bin/sh

# gtemp=$(brightnessctl g)

swayidle -w \
	timeout 190 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
	resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
	timeout 250 "systemctl suspend" \
	resume ''

# alacritty --config-file "$HOME/.config/alacritty/alacritty2.yml" -T alacritty_time -e tty-clock -csC 5

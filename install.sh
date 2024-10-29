#!/bin/bash

pkgs="
zsh
alacritty
wallpapers
waybar
hypr
"

for p in $pkgs; do
	stow $p
done

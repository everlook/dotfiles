#!/bin/bash

pkgs="
alacritty
hypr
nvim
tmux
wallpapers
waybar
zsh
"

for p in $pkgs; do
	stow $p
done

#!/bin/bash

pkgs="
alacritty
git
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

#!/bin/bash
# Usage: ./bootstrap.sh
# Author: Houssameddien YOUSFI

# Requirements :
# i3-gaps
# rxvt-unicode
# rofi
# compton
# feh
# polybar

# Recomondation
# install lxappearance to configure theme and icons 

# -------------------------------------------------

# backup existing config if any
mv ~/.Xresources ~/.Xresources.backup
mv ~/.config/compton.conf ~/.config/compton.conf.backup
mv ~/.config/i3/config ~/.config/i3/config.backup
mv ~/.config/polybar/config ~/.config/polybar/config.backup


#create directory structure
mkdir -p ~/.config/i3
mkdir -p ~/.config/polybar

# get the script dir
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make symbolic links for the config
ln -s "$SCRIPT_DIR"/.Xresources ~/.Xresources
ln -s "$SCRIPT_DIR"/.config/compton.conf ~/.config/compton.conf
ln -s "$SCRIPT_DIR"/.config/i3/config ~/.config/i3/config
ln -s "$SCRIPT_DIR"/.config/polybar/config ~/.config/polybar/config

# perl script to add copy paste abilities to rxvt
# need sudo for this one
sudo cp "$SCRIPT_DIR"/clipboard /usr/lib/x86_64-linux-gnu/urxvt/perl/

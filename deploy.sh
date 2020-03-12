#!/bin/bash
# Usage: ./deploy.sh
# Author: Houssameddien YOUSFI
# -------------------------------------------------
 
# requirements:
# i3-gaps polybar rxvt compton

#backup existing config if any
cp ~/.config/compton.conf ~/.config/compton.conf.back
cp ~/.config/i3/config ~/.config/i3/config.back
cp ~/.config/polybar/config ~/.config/polybar/config.back
cp ~/.Xresources ~/.Xresources.back

#copying the config
cp .Xresources ~/
cp -r .config/ ~/

#need sudo for this one 
sudo cp clipboard /usr/lib/x86_64-linux-gnu/urxvt/perl/
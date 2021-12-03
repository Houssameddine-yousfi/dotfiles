#!/bin/bash
# Usage: ./bootstrap.sh
# Author: Houssameddien YOUSFI

# Requirements :
# zsh
# exa

# -------------------------------------------------

# backup existing config if any
mv ~/.zshrc ~/.zshrc.backup
mv -f ~/.zsh ~/.zsh_backup

#create directory structure
mkdir -p ~/.zsh

# get the script dir
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make symbolic links for the config
ln -sf "$SCRIPT_DIR"/.zshrc ~/.zshrc
ln -sf "$SCRIPT_DIR"/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# make zsh default shell
chsh -s $(which zsh)
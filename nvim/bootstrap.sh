#!/bin/bash

# Install vim plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#install node.js >= 12.12
sudo curl -sL install-node.vercel.app/lts | sudo bash

#install pip to install other dependancies
sudo apt install python3-pip -y

#nvim python 3 module
python3 -m pip install --user --upgrade pynvim

#make symbolic link for the config
mkdir ~/.config/nvim
ln -s "$SCRIPT_DIR"/init.vim ~/.config/nvim/init.vim



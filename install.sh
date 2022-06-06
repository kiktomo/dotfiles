#!/bin/sh

cd ~
ln -s dotfiles/fish                 $HOME/.config/fish

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git vim
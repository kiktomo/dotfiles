#!/bin/sh

mkdir -p ~/.config
cp -pr ./fish ~/.config/

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git vim
sudo chsh -s `which fish`
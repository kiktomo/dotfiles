#!/bin/sh

mkdir -p ~/.config

# fish
cp -pr ./fish ~/.config/

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git vim

# vscode
mkdir -p ~/.config/Code/User/
cp -pr ./vscode/settings.json ~/.config/Code/User/
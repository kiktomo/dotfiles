#!/bin/sh

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git vim fzf ripgrep
mkdir -p ~/.config

# fish
cp -pr ./fish ~/.config/

# vscode
mkdir -p ~/.config/Code/User/
cp -pr ./vscode/settings.json ~/.config/Code/User/
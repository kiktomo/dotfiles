#!/bin/bash

DOTPATH=~/.dotfiles

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git vim
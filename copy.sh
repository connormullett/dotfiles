#!/bin/bash

echo copying files
cp -v ~/.vimrc .
cp -v ~/.zshrc .
cp -v ~/.tmux.conf.local .

echo generating packagelist
pacman -Qqe > pkglist.txt

echo done


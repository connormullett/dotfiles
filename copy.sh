#!/bin/bash

echo copying files
cp -v ~/.vimrc .
cp -v ~/.zshrc .
cp -v ~/.tmux.conf.local .

echo generating packagelist
pacman -Qqe > pkglist.txt

echo installing pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo done


#!/bin/bash

# moving config files
cp -v .vimrc ~
cp -v ~/.zshrc ~
cp -v ~/.tmux.conf.local ~

echo installing oh my tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf ~/.tmux.conf.local

PATHOGEN_COMMAND="execute pathogen#infect()"
GREP_VALUE=$(cat ./.vimrc | grep $PATHOGEN_COMMAND)

if [$GREP_VALUE -e 0]
then
  cat $PATHOGEN_COMMAND >> .vimrc
else
  echo pathogen already installed
fi

echo populating vim plugins
# auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
# most recently used
git clone https://github.com/yegappan/mru.git ~/.vim/bundle/mru
# nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
# syntastic
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# vim airline
git clone git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline vim-airline

# vim clang format
git clone https://github.com/rhysd/vim-clang-format.git ~/.vim/bundle/vim-clang

# vim commentary
git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

# vim fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive

# vim json
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim-json

# you complete me
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

echo installing YouCompleteMe
work_dir=$(pwd)
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python install.sh
cd $work_dir

echo installing powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts


#!/bin/bash

if [ -z $VIM ]; then
    echo "Run inside Vim"
    exit 1
fi

echo VIM = $VIM
echo HOME = $HOME

cp    Vim/vimrc           $VIM/vimrc
cp -r Vim/scripts         $HOME/.vim
cp -r Vim/colors          $VIM
cp    Home/.c64.bashrc    ~

cp    Mintty/c64          /usr/share/mintty/themes
mkdir $HOME/.vim/sessionbackup

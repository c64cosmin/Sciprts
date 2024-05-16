#!/bin/bash

if [ -z $VIM ]; then
    echo "Run inside Vim"
    exit 1
fi

echo VIM = $VIM
echo HOME = $HOME

cp    Vim/vimrc           $VIM/vimrc
cp -r Vim/scripts         $HOME/.vim
cp    Home/.c64.bashrc    ~

if [ "$OSTYPE" = "msys" ]; then
    cp    Mintty/c64          /usr/share/mintty/themes
fi

mkdir $HOME/.vim/sessionbackup

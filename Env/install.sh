#!/bin/bash

if [ -z $VIM ]; then
    echo "Run inside Vim"
    exit 1
fi

echo VIM = $VIM
echo HOME = $HOME

cp    Vim/vimrc   $VIM/vimrc
cp -r Vim/scripts $HOME/.vim/scripts
cp -r Vim/colors  $VIM
cp    Mintty/c64  /usr/share/mintty/themes
cp    Home/*      ~

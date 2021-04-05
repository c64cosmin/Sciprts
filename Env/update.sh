#!/bin/bash

if [ -z $VIM ]; then
    echo "Run inside Vim"
    exit 1
fi

echo VIM = $VIM
echo HOME = $HOME

cp $VIM/vimrc                   Vim
cp -r $HOME/.vim/scripts        Vim
cp /usr/share/mintty/themes/c64 Mintty
cp ~/.inputrc                   Home
cp ~/.c64.bashrc                Home

#!/bin/bash

echo VIM = $VIM
echo HOME = $HOME

cp $VIM/vimrc            Vim
cp $HOME/.vimrc          Vim
cp -r $HOME/.vim/scripts Vim
cp /usr/share/mintty/themes/c64 Mintty

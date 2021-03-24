#!/bin/bash

echo VIM = $VIM
echo HOME = $HOME

cp    Vim/vimrc   $VIM/vimrc
cp    Vim/.vimrc  $HOME/.vimrc
cp -r Vim/scripts $HOME/.vim/scripts
cp -r Vim/colors  $VIM
cp    Mintty/c64  /usr/share/mintty/themes
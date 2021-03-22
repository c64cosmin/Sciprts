#!/bin/bash

echo VIM = $VIM
echo HOME = $HOME

cp vimrc $VIM/vimrc
cp .vimrc $HOME/.vimrc
cp -r scripts $HOME/.vim/scripts
cp -r colors $VIM

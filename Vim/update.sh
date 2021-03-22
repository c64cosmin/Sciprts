#!/bin/bash

echo VIM = $VIM
echo HOME = $HOME

cp $VIM/vimrc .
cp $HOME/.vimrc .
cp -r $HOME/.vim/scripts .

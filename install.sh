#!/bin/bash

#
# Backup any existing .vimrc or .vim directory
# 
if [ -f "$HOME/.vimrc" ]
then
	mv "$HOME/.vimrc" "$HOME/.vimrc.bkup"
fi

if [ -d "$HOME/.vim" ]
then
	mv "$HOME/.vim" "$HOME/.vim.bkup"
fi

cp -r .vim "$HOME/.vim"
cp .vimrc "$HOME/.vimrc"

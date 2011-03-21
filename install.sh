#!/bin/bash

#
# Backup any existing .vimrc or .vim directory
# 
if [ -f "$HOME/.vimrc" ]
	mv "$HOME/.vimrc" "$HOME/.vimrc.bkup"
fi

if [ -d "$HOME/.vim" ]
	mv "$HOME/.vim" "$HOME/.vim.bkup"
fi

cp -r .vim "$HOME/.vim"
cp .vimrc "$HOME/.vimrc"

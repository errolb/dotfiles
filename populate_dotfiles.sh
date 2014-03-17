#!/usr/bin/env sh

for dotfile in $HOME/.dotfiles/multios/*; do
	filename=$(basename $dotfile) 
	
	if [ $filename != "README.md" ]
	then
		# -n flag: no-dereference prevents dir descending
		# -f force overwrite
		ln -snf "$HOME/.dotfiles/multios/$filename" "$HOME/.$filename"
	fi
done

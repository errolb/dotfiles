#!/usr/bin/env sh

for dotfile in $HOME/.dotfiles/multios/*; do
	# changing spaces and parenthesis to underscores for symlink
	filename=$(basename $dotfile) 
	# linkpath="$HOME/.all_media_symlinks/tvshows_live_action/$filename"
	#ln -s "$i" $linkpath
	if [ $filename != "README.md" ]
	then
		ln -sF "$HOME/.dotfiles/multios/$filename" "$HOME/.$filename"
	fi
done

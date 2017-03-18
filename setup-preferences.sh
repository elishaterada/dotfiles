#!/usr/bin/env bash

# Setup macOS defaults
sh .macos

# Copy dotfiles to home directories
function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".macos" \
    --exclude "brew-expansion.sh" \
    --exclude "brew-work.sh" \
    --exclude "brew.sh" \
		--exclude "LICENSE" \
    --exclude "MANUAL.md" \    
    --exclude "node.sh" \    
		--exclude "README.md" \
		--exclude "setup-preferences.sh" \
		--exclude "setup-tools.sh" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

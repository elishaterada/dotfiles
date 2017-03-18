#!/usr/bin/env bash

# Copy dotfiles to home directories
cp -p .aliases ~/.aliases
cp -p .bash_profile ~/.bash_profile
cp -p .exports ~/.exports
cp -p .gitignore ~/.gitignore
cp -p .bashrc ~/.bashrc

source ~/.bash_profile

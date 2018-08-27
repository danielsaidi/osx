#!/bin/bash

# DESCRIPTION
# Configures OS X.

printf "[CONFIG] Finder, Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder -9
printf "\n"

printf "[CONFIG] Enable tabbing between all controls\n"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
printf "\n"
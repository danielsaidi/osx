#!/bin/bash

# DESCRIPTION
# Configures OS X.

# EXECUTION

printf "[CONFIG] Finder, Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder -9
printf "\n"
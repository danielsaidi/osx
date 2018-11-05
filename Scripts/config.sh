#!/bin/bash

# DESCRIPTION
# Configures OS X.

echo "[CONFIG] Finder, Show hidden files"
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder -9
echo ""

echo "[CONFIG] Enable tabbing between all controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
echo ""

echo "[CONFIG] Enable developer mode for admin users"
sudo /usr/sbin/DevToolsSecurity -enable
echo ""
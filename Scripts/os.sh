#!/bin/bash

# DESCRIPTION
# Configure macOS and Install System Software (e.g. Homebrew, Cask etc.)

echo "
*******************
       macOS            
*******************
"

if ! command -v brew > /dev/null; then
    echo "Install Homebrew"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Update Homebrew"
    brew update
fi
echo ""

echo "Install Brew Bundle"
brew tap Homebrew/bundle
echo ""

echo "Enable tabbing between controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
echo ""

echo "Enable developer mode"
sudo /usr/sbin/DevToolsSecurity -enable
echo ""

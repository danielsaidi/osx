#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

if ! command -v brew > /dev/null; then
    echo "[SYSTEM] Install Homebrew"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "[SYSTEM] Update Homebrew"
    brew update
fi
echo ""

echo "[SYSTEM] Install Homebrew Cask"
brew tap caskroom/cask-cask
echo ""

echo "[SYSTEM] Install Brew Bundle"
brew tap Homebrew/bundle
echo ""

echo "[SYSTEM] Install Ruby"
brew install ruby
echo ""

echo "[SYSTEM] Update gem"
gem update --system 
echo ""
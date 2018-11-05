#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

if ! command -v brew > /dev/null; then
    printf "[SYSTEM] Install Homebrew\n"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    printf "[SYSTEM] Update Homebrew\n"
    brew update
fi
printf "\n"

printf "[SYSTEM] Install Homebrew Cask\n"
brew tap caskroom/cask
printf "\n"

printf "[SYSTEM] Install Brew Bundle\n"
brew tap Homebrew/bundle
printf "\n"

printf "[SYSTEM] Install Ruby\n"
brew install ruby
printf "\n"

printf "[SYSTEM] Update gem\n"
gem update --system 
printf "\n"

printf "[SYSTEM] Install Node\n"
brew install node
printf "\n"
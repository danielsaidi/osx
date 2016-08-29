#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

# EXECUTION
if ! command -v brew > /dev/null; then
    printf "[SYSTEM] Install Homebrew\n"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    printf "[SYSTEM] Update Homebrew\n"
    brew update
fi
printf "\n"

printf "[SYSTEM] Install Cask\n"
brew tap caskroom/cask
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

printf "[SYSTEM] Install Jekyll\n"
gem install jekyll
printf "\n"

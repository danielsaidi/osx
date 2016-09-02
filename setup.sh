#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]


# SCRIPTS
source scripts/options.sh

# EXECUTION
while true; do
  if [[ $# == 0 ]]; then
    printf "\n\n***** OS X Setup Script *****\n\n"

    printf "Available commands:\n\n"
    printf "      all:  Install everything\n"
    printf "     apps:  Install Homebrew software\n"
    printf "   config:  Configure OS X behavior\n"
    printf " fastlane:  Install Fastlane tools\n"
    printf "      ssh:  Create and copy SSH key\n"
    printf "   system:  Install system software\n"
    printf "      npm:  Install global npm packages\n"
    printf "\n"
    printf "           q:  Quit/Exit.\n"
    printf "\n\n"

    read -p "Enter option: " response
    printf "\n"
    process_option $response
  else
    process_option $1
  fi
done

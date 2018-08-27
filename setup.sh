#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]


# OPTIONS

process_option() {
  case $1 in
    'all')
      source scripts/config.sh
      source scripts/system.sh
      brew bundle
      bundle install
      source scripts/npm.sh
      source scripts/ssh.sh
      break;;
    'brew')
      brew bundle
      break;;
    'config')
      source scripts/config.sh
      break;;
    'gem')
      bundle install
      break;;
    'npm')
      source scripts/npm.sh
      break;;
    'ssh')
      source scripts/ssh.sh
      break;;
    'system')
      source scripts/system.sh
      break;;
      
    'q')
      break;;
    *)
      break;;
  esac
}


# MENU
while true; do
  if [[ $# == 0 ]]; then
    printf "\n\n***** Setup *****\n\n"

    printf "Available commands:\n\n"
    printf "\n"
    printf "      all:  Install everything\n"
    printf "     brew:  Install packages/apps from Brewfile\n"
    printf "   config:  Configure OS X\n"
    printf "      gem:  Install packages from Gemfile\n"
    printf "      npm:  Install npm packages\n"
    printf "      ssh:  Create & copy SSH key\n"
    printf "   system:  Install system software\n"
    printf "\n"
    printf "        q:  Quit/Exit.\n"
    printf "\n\n"

    read -p "Enter option: " response
    printf "\n"
    process_option $response
  else
    process_option $1
  fi
done

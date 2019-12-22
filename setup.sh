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
      source scripts/dev.sh
      source scripts/git.sh
      source scripts/ssh.sh
      break;;
    'brew')
      brew bundle
      break;;
    'config')
      source scripts/config.sh
      break;;
    'dev')
      source scripts/dev.sh
      break;;
    'gem')
      bundle install
      break;;
    'git')
      source scripts/git.sh
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
    echo ""
    echo "******************"
    echo "    Setup OS X    "
    echo "******************"
    echo ""
    echo "Available commands:"
    echo ""
    echo "      all:  Install everything"
    echo "     brew:  Install packages & applications from Brewfile"
    echo "   config:  Configure macOS"
    echo "      dev:  Configure development environment"
    echo "      gem:  Install packages from Gemfile"
    echo "      git:  Display .gitconfig aliases"
    echo "      npm:  Install npm packages from scripts/npm.sh"
    echo "      ssh:  Create & copy SSH key"
    echo "   system:  Install system software"
    echo ""
    echo "        q:  Quit/Exit."
    echo ""
    read -p "Enter option: " response
    echo ""
    process_option $response
  else
    process_option $1
  fi
done

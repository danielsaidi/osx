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
    echo "      all:  Setup everything"
    echo ""
    echo "     brew:  Install Brewfile Dependencies & Applications"
    echo "   config:  Configure macOS (e.g. enabling developer mode)"
    echo "      dev:  Configure Developer Tools (e.g. Xcode code snippets)"
    echo "      gem:  Install Gemfile Dependencies"
    echo "      git:  Configure git (e.g. adding aliases)"
    echo "      npm:  Install npm packages from scripts/npm.sh"
    echo "      ssh:  Create & copy SSH key"
    echo "   system:  Install System Software (e.g. Homebrew, Cask etc.)"
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

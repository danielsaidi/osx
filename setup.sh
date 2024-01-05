#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]

# OPTIONS

process_option() {
  case $1 in
    'all')
      process_option 'os'
      process_option 'brew'
      process_option 'gem'
      process_option 'git'
      process_option 'ssh'
      break;;
    'brew')
      brew bundle
      break;;
    'git')
      source scripts/git.sh
      break;;
    'os')
      source scripts/os.sh
      break;;
    'ssh')
      source scripts/ssh.sh
      break;;
      
    'q'|*)
      break;;
  esac
}


# MENU
if [[ $# == 0 ]]; then
  echo "
*******************
       MENU        
*******************

Available commands:

  all:  Setup everything

 brew:  Install Brewfile Dependencies
  gem:  Install Gemfile Dependencies
  git:  Configure git (e.g. adding aliases)
   os:  Configure macOS and install system tools
  ssh:  Create & copy SSH key

    q:  Quit/Exit.
"

  read -p "Enter option: " response
  echo ""
  process_option $response
else
  process_option $1
fi
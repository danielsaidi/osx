#!/bin/bash

# DESCRIPTION
# Installs Fastlane and Fastlane tools.

# EXECUTION

printf "[FASTLANE] Install Fastlane\n"
sudo gem install fastlane 
printf "\n"

printf "[FASTLANE] Install Gym\n"
sudo gem install gym
printf "\n"

printf "[FASTLANE] Install Match\n"
sudo gem install match
printf "\n"
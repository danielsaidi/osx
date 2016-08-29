#!/bin/bash

# DESCRIPTION
# Installs global npm packages.

# EXECUTION

printf "[NPM] Installing Ionic CLI\n"
sudo npm install -g cordova ionic
printf "\n"

printf "[NPM] Installing Gulp CLI\n"
sudo npm install -g gulp-cli
printf "\n"

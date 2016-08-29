#!/bin/bash

# DESCRIPTION
# Installs global npm packages.

# EXECUTION

printf "[NPM] Installing Ionic\n"
sudo npm install -g cordova ionic
printf "\n"

printf "[NPM] Installing Gulp\n"
sudo npm install -g gulp-cli
printf "\n"

printf "[NPM] Installing TypeScript\n"
sudo npm install -g typescript
printf "\n"
#!/bin/bash

# DESCRIPTION
# Installs global npm packages.

# EXECUTION

echo "[NPM] Installing Ionic"
sudo npm install -g cordova ionic
echo ""

echo "[NPM] Installing Gulp"
sudo npm install -g gulp-cli
echo ""

echo "[NPM] Installing TypeScript"
sudo npm install -g typescript
echo ""
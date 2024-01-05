#!/bin/bash

# DESCRIPTION
# Configure git (e.g. adding aliases)


echo "

*******************
        git        
*******************

Add the following to ~/.gitconfig :

[color]
  ui = auto

[tag]
  sort = -v:refname

"

read -p "Open ~/.gitconfig? [y/n] " response
echo ""

case $response in
  [yY][eE][sS]|[yY])
    open ~/.gitconfig
esac
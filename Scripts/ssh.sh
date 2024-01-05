#!/bin/bash

# DESCRIPTION
# Creates a new ssh key and copies it to the pasteboard

echo "

*******************
        ssh        
*******************
"

read -p "Create new SSH key? [y/n] " response
case $response in
  'yes'|'y')
    echo ""
    read -p "Enter your e-mail: " ssh_email
    echo ""
    echo "Creating ssh key"
    ssh-keygen -t rsa -b 4096 -C $ssh_email
    break;;
esac

echo ""

echo "Adding ssh key to ssh-agent"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo ""

echo "Copying ssh key to pasteboard"
pbcopy < ~/.ssh/id_rsa.pub

echo "Done"
echo ""
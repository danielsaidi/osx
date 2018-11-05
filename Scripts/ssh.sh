#!/bin/bash

# DESCRIPTION
# Creates an ssh key and copies it to the pasteboard

# EXECUTION

read -p "[SSH] Create new SSH key (yes/no): " response
if test "$response" = "yes"; then
	printf "\n"
	read -p "Enter your e-mail: " ssh_email
	printf "\n"
    printf "[SSH] Creating ssh key\n"
    ssh-keygen -t rsa -b 4096 -C $ssh_email
fi
printf "\n"

printf "[SSH] Adding ssh key to ssh-agent\n"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
printf "\n"

printf "[SSH] Copying ssh key to pasteboard\n"
pbcopy < ~/.ssh/id_rsa.pub

printf "[SSH] Done\n"
printf "\n"
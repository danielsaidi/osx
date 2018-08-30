#!/bin/bash

# DESCRIPTION
# Git aliases

printf "Add the following to [alias] in ~/.gitconfig:\n\n"
printf "tag-latest = tag -l --sort=-v:refname # reverse\n"
printf "tagrev = tag-latest"
open ~/.gitconfig
printf "\n"
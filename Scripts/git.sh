#!/bin/bash

# DESCRIPTION
# Git aliases

echo "Add the following to [alias] in ~/.gitconfig:"
echo ""
echo "tag-latest = tag -l --sort=-v:refname # reverse"
echo "tagrev = tag-latest"
open ~/.gitconfig
echo ""
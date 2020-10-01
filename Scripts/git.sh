#!/bin/bash

# DESCRIPTION
# Configure git (e.g. adding aliases)

echo "Add the following to [alias] in ~/.gitconfig :"
echo "  tag-latest = tag -l --sort=-v:refname # reverse"
echo "  tagrev = tag-latest"
open ~/.gitconfig
echo ""
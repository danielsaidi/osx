#!/bin/bash

# DESCRIPTION
# Configure developer tools (e.g. Xcode code snippets)

# EXECUTION

echo "Copies Xcode code snippets..."
path_src=Snippets
path_dst=~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir $path_dst
for file in $path_src/*.codesnippet; do
	cp $file $path_dst/$(basename $file)
done
echo "Copies Xcode code snippets: DONE"
echo ""
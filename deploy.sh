#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t hemingway # if using a theme, replace with `hugo -t <YOURTHEME>`

# Rebuild the site
cd public
git add --all
git commit -m "Rebuilding the site `date`"
git push origin master
cd ..

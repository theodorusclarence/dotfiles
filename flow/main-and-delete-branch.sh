#!/bin/bash

# Checkout to main branch
# Then delete the branch

branch=$(git branch | grep \* | cut -d ' ' -f2)

git checkout main
git pull

if [ $branch != "main" ]; then
    git branch -D $branch
fi


# add to zsh 
# alias gcmr="bash /Users/Clarence/flow/main-and-delete-branch.sh"


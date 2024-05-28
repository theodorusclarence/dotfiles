#!/bin/bash

# Checkout to staging branch
# Then delete the branch

branch=$(git branch | grep \* | cut -d ' ' -f2)

git checkout staging
git pull

if [ $branch != "staging" ]; then
    git branch -D $branch
fi


# add to zsh 
# alias gcmr="bash /Users/Clarence/flow/staging-and-delete-branch.sh"


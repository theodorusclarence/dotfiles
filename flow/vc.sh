#!/bin/bash

REMOTE=`git remote show -n origin | grep Push | cut -d: -f2- | rev | cut -c 5- | rev `
LINK="https://vercel.com/new/import?s=$REMOTE"
CLEAN_LINK=`echo $LINK | sed 's/ //g'`

# If there is remote, else echo
if [ -n "$REMOTE" ]; then
    open $CLEAN_LINK
else
    echo "No remote found"
fi
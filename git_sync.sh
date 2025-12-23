#!/bin/bash

REPO="testrepo"
LOG="git-sync.log"

cd $REPO || exit

echo "===== $(date) =====" >> ../$LOG
git pull >> ../$LOG 2>&1
git log -1 --pretty=format:"%an | %ad | %s" >> ../$LOG
echo "" >> ../$LOG

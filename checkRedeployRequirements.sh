#!/bin/bash

LATEST_PROJECT_COMMIT=$(git log -n 1 --format="%H")
echo $LATEST_PROJECT_COMMIT

PROJECT_LIST=$(ls -d */)
for P in $PROJECT_LIST; do

    if [ $(git log -n 1 --format="%H") == $(git log -n 1 --format="%H" -- $P) ]; then
        echo "$P is on same commit as project"
    else
        echo "$P is on an older commit than project"
    fi
done

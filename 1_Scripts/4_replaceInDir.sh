#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Use: $0 dir toBeReplaced withThis"
fi
find $1 -type f -exec sed -i -e "s/$2/$3/" {} \;

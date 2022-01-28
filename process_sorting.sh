#!/bin/bash

read -p "Enter file name:" FILENAME

if [ -f $FILENAME ]; then
    echo "File $FILENAME exists in $(pwd)"
else
    touch $FILENAME
    echo "$FILENAME created in $(pwd)"
    ps -e --sort pid > $FILENAME
    echo "Processes sorting finished."
fi


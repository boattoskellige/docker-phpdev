#!/bin/bash

SRC_PATH=$1
if [ -z "$SRC_PATH" ]; then
    echo ""
    echo "USAGE:"
    echo "up.sh /path/to/source"
    echo ""
    exit 1
fi

if [ ! -d "$SRC_PATH" ]; then
    echo ""
    echo "The given path doesn't exist"
    echo ""
    exit 1
fi

export SRC_PATH=$SRC_PATH
docker-compose up -d
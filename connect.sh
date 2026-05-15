#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <user@host> <port>"
    exit 1
fi

ssh -N -L 11434:127.0.0.1:11434 "$1" -p "$2" -i ~/.ssh/runpod

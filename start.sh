#!/bin/bash
set -e

if [ -n "$PUBLIC_KEY" ]; then
    echo "$PUBLIC_KEY" > /root/.ssh/authorized_keys
    chmod 600 /root/.ssh/authorized_keys
fi

/usr/sbin/sshd -D &
exec ollama serve

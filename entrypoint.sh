#!/bin/sh

if [ -n "$TTY" ]; then
    exec "$@"
else
    exec ttyd -p 80 "$@"
fi

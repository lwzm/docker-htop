#!/bin/sh

if tty >/dev/null; then
    exec "$@"
else
    exec ttyd -p 80 "$@"
fi

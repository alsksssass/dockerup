#!/bin/sh
if [ ! -z "$DOCKER_USER" ]; then
    usermod -u $(id -u) coder
    groupmod -g $(id -g) coder
fi
exec /usr/bin/entrypoint.sh "$@"
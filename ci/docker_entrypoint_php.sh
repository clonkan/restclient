#!/bin/bash

# We need to install dependencies only for Docker
[[ ! -e /.dockerenv ]] && exit 0

set -xe

# Install extention
docker-php-ext-install -j$(nproc) sockets

$@
exit $?
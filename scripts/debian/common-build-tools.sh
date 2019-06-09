#!/usr/bin/env bash

echo "Installing common build tools for Debian"

set -x

sudo apt update -y
sudo apt-get install -yV make build-essential libssl-dev zlib1g-dev \
                         libbz2-dev libreadline-dev libsqlite3-dev wget curl \
                         llvm libncurses5-dev libncursesw5-dev \
                         xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

set +x
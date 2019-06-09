#!/usr/bin/env bash

echo "Installs python2 and python3 and sets the default version to python3"

set -x

sudo apt update -y
sudo apt install -yV python2 python3

set +x

PYTHON2_VERSION=$(dpkg -s python2 | grep '^Version:' | awk '{ print $2 };' | cut -d"." -f1,2)
PYTHON3_VERSION=$(dpkg -s python3 | grep '^Version:' | awk '{ print $2 };' | cut -d"." -f1,2)

set -x

sudo update-alternatives --install /usr/bin/python python /usr/bin/python${PYTHON3_VERSION} 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python${PYTHON2_VERSION} 1
sudo update-alternatives --set python /usr/bin/python${PYTHON3_VERSION}

set +x
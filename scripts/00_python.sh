#!/usr/bin/env bash

echo "Installing required tools for python"

PYTHON_VERSION=3.7.3

set -x

if [[ ! -d "$HOME/.pyenv" ]]; then
    curl https://pyenv.run | bash
    source ../.conf.d/pyenv.conf
else
    pyenv update
fi

pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

pip3 install pipx simplejson pycurl

pipx install youtube-dl
pipx install speedtest-cli
pipx install awscli
pipx install ansible-tower-cli
pipx install ansible
pipx inject ansible paramiko
pipx inject ansible openshift

pipx upgrade-all

set +x
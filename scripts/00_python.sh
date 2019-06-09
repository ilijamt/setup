#!/usr/bin/env bash

echo "Installing required tools for python"

set -x

if [[ ! -d "$HOME/.pyenv" ]]; then
    curl https://pyenv.run | bash
    source ../.conf.d/pyenv.conf
else
    pyenv update
fi

pip3 install pipx simplejson python-apt pycurl

pipx install youtube-dl
pipx install speedtest-cli
pipx install awscli
pipx install ansible-tower-cli
pipx install ansible
pipx inject ansible paramiko
pipx inject ansible openshift

pipx upgrade-all

set +x
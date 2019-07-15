#!/usr/bin/env bash

echo "Copy the configuration files to the your home directory at $HOME"
cp -Rv ./.zshrc ./.conf.d $HOME
mkdir -p $HOME/.conf.d/custom
touch $HOME/.conf.d/custom/empty.conf
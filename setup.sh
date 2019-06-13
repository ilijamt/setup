#!/usr/bin/env bash

_separator_with_filename () {
   printf '=%.0s' {1..50}; echo -n "($1)"; printf '=%.0s' {1..50}; echo;
}

echo "Loading all available scripts to setup your machine"
if [[ "$(uname)" == "Darwin" ]]; then
    OS_DIRECTORY=macos
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    OS_DIRECTORY=debian
else
    echo "Unsupported $(uname)"
fi

for f in scripts/$OS_DIRECTORY/*.sh; do
    _separator_with_filename "$f"
    source "$f"
    _separator_with_filename "$f"
done


for f in scripts/*.sh; do
    _separator_with_filename "$f"
    source "$f"
    _separator_with_filename "$f"
done

bash setup.conf.d.sh
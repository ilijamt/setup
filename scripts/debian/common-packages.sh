#!/usr/bin/env bash

echo "Installing common packages for Debian"

set -x

sudo apt-get install -yV apache2-utils apg aptitude apt-transport-https at bridge-utils \
                         ca-certificates curl dialog dnsutils ethtool git glances gnupg gnupg2 \
                         htop iotop iproute2 ipset iputils-arping iputils-clockdiff iputils-ping \
                         iputils-tracepath jq less locate lsb-release lsof lvm2 man nano neofetch net-tools \
                         nmap p7zip-full parted pm-utils psmisc pv pwgen qemu-guest-agent \
                         rsync rsyslog screen screenfetch sshfs sshpass strace subversion sudo tcpdump tmux \
                         traceroute uuid-runtime vim virtualenv wget whois xfsprogs \
                         xml2 xz-utils zip zsh zsh-common

set +x
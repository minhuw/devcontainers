#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -y install fakeroot asciidoc debhelper dkms gawk default-jdk python3-docutils libbw-dev libunwind-dev libudev-dev libpci-dev libiberty-dev libnuma-dev libcap-dev python3-dev && rm -rf /var/lib/apt/lists/*

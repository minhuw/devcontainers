#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get -y install fakeroot asciidoc debhelper dkms gawk default-jdk python3-docutils libdw-dev libunwind-dev libudev-dev libpci-dev libiberty-dev libnuma-dev libcap-dev python3-dev libclang-dev clang llvm && sudo rm -rf /var/lib/apt/lists/*

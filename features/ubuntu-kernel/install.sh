#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get -y install fakeroot asciidoc debhelper dkms gawk default-jdk python3-docutils python3-setuptools libdw-dev libunwind-dev libudev-dev libpci-dev libiberty-dev libnuma-dev libcap-dev python3-dev libclang-dev clang llvm software-properties-common && sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && sudo apt-get update && sudo apt-get -y install gcc-13 g++-13 && sudo rm -rf /var/lib/apt/lists/*

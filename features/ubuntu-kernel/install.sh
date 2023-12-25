#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get -y install fakeroot asciidoc bear debhelper dkms gawk pkg-config default-jdk python3-docutils python3-setuptools libdw-dev libunwind-dev libudev-dev libpci-dev libiberty-dev libnuma-dev libcap-dev libpfm4-dev libbabeltrace-ctf-dev systemtap-sdt-dev libslang2-dev libperl-dev python3-dev libclang-dev clang llvm software-properties-common && sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && sudo apt-get update && sudo apt-get -y install gcc-13 g++-13 && sudo rm -rf /var/lib/apt/lists/*

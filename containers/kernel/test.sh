#!/usr/bin/env bash

mkdir linux && wget -qO- https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.3.4.tar.xz | tar xJ -C linux --strip-components 1

cd linux && make tinyconfig && make vmlinux -j
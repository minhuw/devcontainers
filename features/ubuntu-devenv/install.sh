#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get install --no-install-recommends -y locales curl systemd xz-utils ca-certificates python3 python3-pip && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux --extra-conf "sandbox = true" --no-start-daemon --no-confirm 

ENV PATH="${PATH}:/nix/var/nix/profiles/default/bin"

nix-env -i cachix

cachix use devenv

nix-env -if https://install.devenv.sh/python-rewrite
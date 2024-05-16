#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get install --no-install-recommends -y fish && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

curl -sS https://starship.rs/install.sh | sh -s -- -y

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply minhuw

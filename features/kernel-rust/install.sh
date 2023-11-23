#!/usr/bin/env bash

curl https://raw.githubusercontent.com/gregkh/linux/linux-6.6.y/scripts/min-tool-version.sh -O /tmp/scripts/min-tool-version.sh && chmod +x /tmp/scripts/min-tool-version.sh

rustup override set "$(/tmp/scripts/min-tool-version.sh rustc)"

rustup component add rust-src

cargo install --locked --version "$(/tmp/scripts/min-tool-version.sh rustc)" bindgen-cli

rustup component add rustfmt clippy 
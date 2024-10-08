#!/usr/bin/env bash

curl https://raw.githubusercontent.com/torvalds/linux/v6.11/scripts/min-tool-version.sh -O /tmp/scripts/min-tool-version.sh && chmod +x /tmp/scripts/min-tool-version.sh

rustup default set "$(/tmp/scripts/min-tool-version.sh rustc)"

rustup component add rust-src rustfmt clippy 

cargo install --locked --version "$(/tmp/scripts/min-tool-version.sh bindgen)" bindgen-cli

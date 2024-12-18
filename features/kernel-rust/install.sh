#!/usr/bin/env bash

rustup default set "1.78.0"

rustup component add rust-src rustfmt clippy 

cargo install --locked --version "0.65.1" bindgen-cli

FROM ubuntu:22.04

RUN apt-get update && apt-get install --no-install-recommends -y locales curl xz-utils ca-certificates systemd && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux --init none --no-confirm 

ENV PATH="${PATH}:/nix/var/nix/profiles/default/bin"

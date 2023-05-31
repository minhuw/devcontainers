FROM ubuntu:22.04

RUN apt-get update && apt-get install --no-install-recommends -y locales curl xz-utils ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux --extra-conf "sandbox = true" --init none --no-confirm 

ENV PATH="${PATH}:/root/.nix-profile/bin:/nix/var/nix/profiles/default/bin"

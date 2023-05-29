FROM ubuntu:22.04

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -y install curl && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux \
  --extra-conf "sandbox = false" \
  --init none \
  --no-confirm

ENV PATH="${PATH}:/nix/var/nix/profiles/default/bin"

RUN . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh && \
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable unstable && \
    nix-channel --update && \
    nix-env -i morph git openssh

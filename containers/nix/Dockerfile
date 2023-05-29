FROM ubuntu:22.04

RUN apt-get update && apt-get install --no-install-recommends -y locales curl xz-utils ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -m 0755 /nix && groupadd -r nixbld && chown root /nix && for n in $(seq 1 10); do useradd -c "Nix build user $n" -d /var/empty -g nixbld -G nixbld -M -N -r -s "$(command -v nologin)" "nixbld$n"; done

RUN bash -c "set -o pipefail && curl -L https://nixos.org/nix/install | bash"

RUN echo "export PATH=$PATH:$HOME/.nix-profile/bin && source /nix/var/nix/profiles/default/etc/profile.d/nix.sh" >> "$HOME/.bashrc"

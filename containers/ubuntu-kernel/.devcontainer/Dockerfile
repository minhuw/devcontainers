FROM ubuntu:23.04

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -y install bc bison build-essential cpio flex git gcc-13 pahole libelf-dev libssl-dev liblzma-dev libncurses-dev libzstd-dev wget zstd && rm -rf /var/lib/apt/lists/*
FROM ghcr.io/minhuw/base-dev:latest

RUN export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get -y install \
    asciidoc \
    bc \
    bear \
    bison \
    build-essential \
    clang \
    clangd \
    cpio \
    devscripts \
    debhelper \
    default-jdk \
    dkms \
    dwarfdump \
    fakeroot \
    flex \
    gawk \
    git \
    binutils-dev \
    libbabeltrace-ctf-dev \
    libcap-dev \
    libclang-dev \
    libcapstone-dev \
    libdw-dev \
    libelf-dev \
    libiberty-dev \
    liblzma-dev \
    libncurses-dev \
    libnuma-dev \
    libpci-dev \
    libperl-dev \
    libpfm4-dev \
    libslang2-dev \
    libssl-dev \
    libtraceevent-dev \
    libtracefs-dev \
    libudev-dev \
    libunwind-dev \
    libzstd-dev \
    lld \
    llvm \
    pahole \
    pkg-config \
    python3-dev \
    python3-docutils \
    python3-setuptools \
    software-properties-common \
    systemtap-sdt-dev \
    wget \
    zstd \
    rustc-1.80 \
    rust-1.80-src \
    rustfmt-1.80 \
    bindgen-0.65 \
    && sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y \
    && sudo apt-get update \
    && sudo apt-get -y install \
    g++-14 \
    gcc-14 \
    && sudo rm -rf /var/lib/apt/lists/*

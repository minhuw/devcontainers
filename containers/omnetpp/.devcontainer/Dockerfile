FROM ghcr.io/minhuw/base-dev:latest

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -y install build-essential cmake pkg-config clang clangd lld gdb bison flex perl python3 python3-pip libpython3-dev  python3-venv qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5opengl5-dev libxml2-dev zlib1g-dev doxygen graphviz libwebkit2gtk-4.1-0 xdg-utils libdw-dev libopenscenegraph-dev

RUN wget https://github.com/omnetpp/omnetpp/releases/download/omnetpp-6.1.0/omnetpp-6.1.0-linux-x86_64.tgz && tar -xvf omnetpp-6.1.0-linux-x86_64.tgz && rm omnetpp-6.1.0-linux-x86_64.tgz && mv omnetpp-6.1 /opt/omnetpp

RUN cd /opt/omnetpp && sed -i 's/^SHARED_LIBS=yes/SHARED_LIBS=no/' configure.user && ./install.sh -y --no-gui --no-3d

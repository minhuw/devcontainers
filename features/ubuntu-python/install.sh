#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && sudo apt-get update && sudo apt-get -y install python3 python3-pip && sudo rm -rf /var/lib/apt/lists/*
pip install pdm
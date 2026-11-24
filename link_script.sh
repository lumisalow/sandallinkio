#!/usr/bin/env bash
set -e
LIB="multi-pond.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/lumisalow/sandallinkio/releases/download/hidden-delta-hidden-ember/multi-pond.a"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app

#!/usr/bin/env bash
set -e
REPO="marazecresta/blandgroupio"
LIB="balanced-moat.a"
URL="https://github.com/${REPO}/releases/download/gentle-cedar-eager-canyon/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app

#!/bin/bash
set -u

# Robust Termux bootstrap script.
# Some packages are architecture- or repository-specific; this script keeps going
# if one package is unavailable so the rest can still install.

if ! command -v pkg >/dev/null 2>&1; then
  echo "This script must be run inside Termux."
  exit 1
fi

if command -v apt >/dev/null 2>&1; then
  echo "Updating package indexes..."
  apt update || true
  apt upgrade -y || true
fi

packages=(
  python
  python2
  git
  figlet
  toilet
  nano
  php
  bash
  perl
  curl
  ruby
  openssh
  wget
  ngrok
  nodejs
  nmap
  grep
  golang
  vim
  w3m
  sudo
  tsu
  npm
  emacs
  micro
  clang
  coreutils
  tqdm
  gnupg
  swi-prolog
  clib
  rdf
  chr
  http
  pcre
  pengines
  protobufs
  sgml
  yaml
  zlib
  ssl
  semweb
  bdb
  odbc
  space
  sl
  top
)

for pkg_name in "${packages[@]}"; do
  echo "Installing: $pkg_name"
  pkg install -y "$pkg_name" || echo "Warning: '$pkg_name' is unavailable or failed to install; continuing..."
done

if command -v pip2 >/dev/null 2>&1; then
  pip2 install --upgrade pip setuptools wheel requests || true
fi

if command -v pip >/dev/null 2>&1; then
  pip install --upgrade pip setuptools wheel future beautifulsoup4 || true
fi

echo "Termux setup complete."

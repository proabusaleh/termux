#!/bin/bash
set -u

# Minimal but useful Termux bootstrap
# Installs a practical set of everyday tools and keeps going even when a package is unavailable.

if ! command -v pkg >/dev/null 2>&1; then
  echo "This script must be run in Termux."
  exit 1
fi

if command -v apt >/dev/null 2>&1; then
  echo "Updating package indexes..."
  apt update || true
  apt upgrade -y || true
fi

packages=(
  git
  curl
  wget
  nano
  vim
  bash
  perl
  python
  python2
  ruby
  php
  nodejs
  npm
  golang
  openssh
  nginx
  nmap
  grep
  coreutils
  figlet
  toilet
  w3m
  clang
  make
  g++
  cmake
  gnupg
  sudo
  tsu
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

echo "Termux bootstrap completed."

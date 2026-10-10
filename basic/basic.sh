#!/bin/bash
set -euo pipefail

# Update the package indexes and upgrade installed packages.
apt update
apt upgrade -y

# Install the core CLI and development utilities commonly used in Termux.
pkg install -y \
  python \
  python2 \
  git \
  figlet \
  toilet \
  nano \
  php \
  bash \
  perl \
  curl \
  ruby \
  openssh \
  wget \
  ngrok \
  nodejs \
  nmap \
  grep \
  golang \
  vim \
  w3m \
  sudo \
  tsu \
  npm \
  emacs \
  micro \
  clang \
  coreutils \
  tqdm \
  gnupg \
  swi-prolog \
  clib \
  rdf \
  chr \
  http \
  pcre \
  pengines \
  protobufs \
  sgml \
  yaml \
  zlib \
  ssl \
  semweb \
  bdb \
  odbc \
  space \
  sl \
  top

# Install Python packages.
pip2 install requests
pip install future beautifulsoup4

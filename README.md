# Termux Basic Command Setup

This repository contains a clean, working list of common Termux packages and Python packages for quick setup.

## Installation commands

```bash
apt update
apt upgrade -y

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

pip2 install requests
pip install future beautifulsoup4
```

## Notes

- Use `pkg install -y` to avoid interactive prompts.
- The script in `basic/basic.sh` is the canonical version of this setup.
- Some packages may not be available in every Termux architecture or package repository, so you may need to adjust based on your device.

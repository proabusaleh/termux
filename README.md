# Termux Minimal Setup

This repository contains a simple Termux bootstrap script for installing a practical base toolchain.

## Install

```bash
bash basic/basic.sh
```

## What the script installs

The script installs a useful, minimal set of packages for everyday use, including:

- git
- curl
- wget
- nano
- vim
- bash
- perl
- python
- python2
- ruby
- php
- nodejs
- npm
- golang
- openssh
- nmap
- grep
- coreutils
- figlet
- toilet
- w3m
- clang
- make
- g++
- cmake
- gnupg
- sudo
- tsu

It also upgrades Python tools like:

- pip / pip2
- setuptools
- wheel
- requests
- future
- beautifulsoup4

## Notes

- The script is designed to continue even if some packages are unavailable.
- Some packages may vary by device architecture or Termux package availability.
- The canonical script lives in `basic/basic.sh`.

#!/bin/sh
# mirrors
sudo sed -i -e 's%http://archive.ubuntu.com/ubuntu%http://mirror.onet.pl/pub/mirrors/ubuntu%' -e 's/^deb-src/#deb-src/' /etc/apt/sources.list

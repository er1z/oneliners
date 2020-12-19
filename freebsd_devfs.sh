#!/bin/sh
mkdir /chroot/dev
mknod /chroot/dev/null c 1 3
mknod /chroot/dev/urandom c 1 9

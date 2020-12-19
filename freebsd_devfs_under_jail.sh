#!/bin/sh

mount -t devfs devfs /mount/point

echo "devfs /mount/point devfs rw,late 0 0" >> /etc/fstab

#!/bin/sh

# first terminal
adb forward tcp:5555 tcp:5555
adb shell busybox nc –l –p 5555 –e dd if=/dev/mtd/mtd[mtd block number]

# second terminal
nc 127.0.0.1 5555 | dd of=[chosen file name].bin

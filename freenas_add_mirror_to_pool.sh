#!/bin/sh

gpart create -s gpt da2
gpart add -b 128 -i 1 -t freebsd-swap -s 2G da2
gpart add -i 2 -t freebsd-zfs da2

# existing
# 5052a62f-c4b3-11e8-bf67-000c2981010c

# new
# aa9eae3a-c4f2-11e8-bf67-000c2981010c

zpool attach /dev/gptid/5052a62f-c4b3-11e8-bf67-000c2981010c /dev/gptid/aa9eae3a-c4f2-11e8-bf67-000c2981010c

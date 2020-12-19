#!/bin/sh

echo password | gpg --batch -q --passphrase-fd 0 --cipher-algo AES256 -c file_to_encrypt

#!/bin/sh

curl -SL http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz | tar -xz -C ~/ 
rm /usr/bin/iconv 
mv /libiconv-1.15 /libiconv 
~/libiconv/configure --prefix=/usr 
make && make install 

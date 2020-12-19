#!/bin/sh
socat tcp-l:1234,reuseaddr,fork unix:/tmp/socket.sock

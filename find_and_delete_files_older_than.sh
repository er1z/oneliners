#!/bin/sh
find /path/to/base/dir -type d -ctime +10 -exec rm -rf {} \;

#!/bin/sh
ffmpeg -y -i src.flv -f mjpeg -ss 10 -vframes 1 160x120 thumb.jpg

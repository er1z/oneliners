#!/bin/sh
convert img.jpg -thumbnail x400 -resize "400x<" -resize 50% -gravity center -crop 200x200+0+0 +repage thumb.jpg

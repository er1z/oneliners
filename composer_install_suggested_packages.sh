#!/bin/sh

cat composer.json | python3 -c "import json,sys;obj=json.load(sys.stdin);print(' '.join(obj['suggest'].keys()))" | xargs composer require

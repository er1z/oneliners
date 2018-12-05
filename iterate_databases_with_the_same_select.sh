#!/bin/bash

mysql -B -e 'show databases;' | xargs -I {} mysql -B -e 'select "{}", email from {}.table'

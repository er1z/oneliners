#!/bin/sh
docker-compose stop web
docker-compose build web
docker-compose up -d --no-deps web

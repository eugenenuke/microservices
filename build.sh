#!/bin/sh

docker volume create reddit_db
docker network create reddit

docker build -t eugenenuke/post:1.0 post-py
docker build -t eugenenuke/comment:1.0 comment
docker build -t eugenenuke/ui:3.0 ui

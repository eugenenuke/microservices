#!/bin/sh

docker run -d --network reddit --network-alias=main_db -v reddit_db:/data/db mongo:latest
docker run -d --network reddit --network-alias=post_app -e POST_DATABASE_HOST=main_db eugenenuke/post:1.0
docker run -d --network reddit --network-alias=comment_app -e COMMENT_DATABASE_HOST=main_db eugenenuke/comment:1.0
docker run -d --network reddit -p 9292:9292 -e POST_SERVICE_HOST=post_app -e COMMENT_SERVICE_HOST=comment_app eugenenuke/ui:3.0

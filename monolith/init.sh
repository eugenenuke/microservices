#!/bin/sh

docker-machine create --driver google \
	--google-project docker-220019 \
	--google-zone europe-west4-a \
	--google-machine-type g1-small \
	--google-machine-image $(gcloud compute images list --filter ubuntu-1604-lts --uri) \
	docker-host

docker-machine ls

#!/bin/bash

docker-machine create --driver google \
	--google-project docker-220019 \
	--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
	--google-machine-type n1-standard-1 \
	--google-zone europe-west1-b \
	vm1

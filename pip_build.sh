#!/bin/bash

# This script builds a Docker image for the service, 
# tags it with the 'dev' and 'latest' tags,

./pip_img_delete.sh

docker build -f Dockerfile -t py_app:dev --no-cache .
docker tag py_app:dev py_app:latest

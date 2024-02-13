#!/bin/bash

# This script is removing Docker images, containers, networks, and volumes that are no longer in use.

set -e

images=(
  "py_app:dev"
  "py_app:latest"
)

for image in "${images[@]}"; do
  if docker image ls -q "$image" | grep -q -v '^$'; then
    echo "Removing image: $image"
    docker image rm "$image"
  else
    echo "Image $image does not exist. Skipping."
  fi
done

docker container prune -f
docker image prune -f
docker network prune -f
docker volume prune -f

#!/bin/bash
image_tag="docker-doom:1.0"

if [ "$(command -v docker)" = '' ]; then
  echo "You have to install docker before you can build the container."
  exit 1
fi

# Set custom tag name if desired
if [ "$#" -gt 1 ]; then image_tag="$1"; fi

# Remove any previous build file
if [ -d "./Dockerfile" ]; then rm -r "./Dockerfile"; fi

cp "./linux/Dockerfile" "./"
docker build . -t "$image_tag"

# Clean up after ourselves
rm ./Dockerfile

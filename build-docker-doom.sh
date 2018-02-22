#!/bin/bash

if [ "`command -v docker`" = '' ]; then
  echo "You have to install docker before you can build the container."
  exit 1
elif [ '$#' -gt 1 ]; then
   docker build . -t $1
else
  docker build . -t docker-doom
fi

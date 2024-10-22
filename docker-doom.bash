#!/bin/bash
docker run            \
  --name docker-doom  \
  --restart always    \
  -d docker-doom:1.0

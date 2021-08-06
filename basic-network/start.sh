#!/bin/bash
set -ev

# don't rewrite paths for Windows Git Bash users
export MSYS_NO_PATHCONV=1

docker stop $(docker ps -a -q)
docker-compose -f docker-compose.yaml up -d
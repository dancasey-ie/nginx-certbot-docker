#!/bin/bash

echo "killing old docker processes"
docker-compose rm -fs

echo "seting environment variables"
source ./set_env.sh

echo "building docker containers"
docker-compose -f compose-init-ssl.yml up

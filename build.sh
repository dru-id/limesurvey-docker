#!/usr/bin/env bash

TAG="docker.dru-id.com:5000/druid/limesurvey:2.62"

docker build -t $TAG .
docker push $TAG

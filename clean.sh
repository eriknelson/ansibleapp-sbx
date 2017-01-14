#!/bin/bash
arg=$1
docker rm `docker ps -a | grep hello | awk '{print $1}'`
docker rmi fusordevel/hello-ansibleapp

if [[ "$1" == "all" ]]; then
  docker rmi fusordevel/ansibleapp-base
fi

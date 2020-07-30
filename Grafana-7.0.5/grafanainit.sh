#! /bin/bash

docker rm -f grafana
docker rmi -f grafana
docker build -t grafana:v7.0.5 . --no-cache
docker run --privileged --name grafana -p 3000:3000 -v /sys/fs/cgroup:/sys/fs/cgroup grafana:v7.0.5 /usr/sbin/init

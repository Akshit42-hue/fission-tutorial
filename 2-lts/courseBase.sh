#!/usr/bin/env bash

docker pull fission/fetcher
docker pull fission/fission-bundle
docker pull fission/builder

mkdir /root/hello.js

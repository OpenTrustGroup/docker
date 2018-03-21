#!/bin/bash

docker run --rm -v docker_jenkins-home:/data -v $(pwd):/backup ubuntu:xenial tar -zcvf /backup/jenkins-`date +%Y%m%d`.tar.gz --exclude="/data/workspace" /data

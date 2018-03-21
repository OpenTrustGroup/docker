#/bin/bash

if [ "$#" -ne 1 ]; then
   echo "$0 <backup_file>"
   exit
fi

docker run --rm -v docker_jenkins-home:/data -v $(pwd):/backup ubuntu:xenial bash -c "tar xvf backup/$1 -C /"


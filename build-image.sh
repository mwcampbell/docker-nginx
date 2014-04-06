#!/bin/sh
set -e
if [ -z "$1" ]
then
  echo "Usage: $0 username" >&2
  exit 1
fi
username="$1"
git submodule update --init
docker rmi $username/nginx-build || true
docker rmi $username/nginx || true
docker build --rm -t=$username/nginx-build .
docker run --rm $username/nginx-build cat /runtime.tar > runtime/runtime.tar
docker build --rm -t=$username/nginx runtime
docker rmi $username/nginx-build

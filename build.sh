#!/bin/bash

# Setup
set -e
jobs=-j8
export DEPS=$SRC/deps
export PATCHDIR=$SRC/patches

for script in $SRC/steps/*
do
  mkdir /work
  cd /work
  echo Running $script
  . $script
  cd /
  rm -rf /work
  hash -r
done

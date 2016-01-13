#!/bin/bash
set -e

echo "Running DNS requests..."
NUM=$1
if [ -z "$1" ]
  then
    NUM=1
fi
curl $(head -n $NUM top-1m.csv | cut -f2 -d ",") > /dev/null

echo "Done!"


#!/bin/bash
set -e

echo "Running DNS requests..."
NUM=$1
if [ -z "$1" ]
  then
    NUM=1
fi
head -n $NUM top-1m.csv | cut -f2 -d "," | nslookup
echo "Done!"

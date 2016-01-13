#!/bin/bash
set -e

echo "Running DNS requests..."
NUM=$1
if [ -z "$1" ]
  then
    NUM=1
fi

#head -n $NUM top-1m.csv | cut -f2 -d "," | nslookup
dig @80.58.0.33 $(head -n $1 top-1m.csv | cut -f2 -d ",")

echo "Done!"

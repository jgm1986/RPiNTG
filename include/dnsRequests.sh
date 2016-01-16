#!/bin/bash
set -e

echo "Running DNS requests..."
NUM=$1
if [ -z "$1" ]
  then
    NUM=1
fi

if [ -z "$2" ]
  then
	#head -n $NUM top-1m.csv | cut -f2 -d "," | nslookup
	dig $2 $(head -n $1 top-1m.csv | cut -f2 -d ",")
  else
	dig $(head -n $1 top-1m.csv | cut -f2 -d ",")
fi

echo "Done!"

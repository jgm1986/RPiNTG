#!/bin/bash
set -e

# Get the current path.
pwd_dir=$(pwd)

# Create temporal directory
$pwd_dir/include/newTmpDir.sh
cd tmp

# Download the Alexa list and execute DNS query.
$pwd_dir/include/alexa.sh
$pwd_dir/include/dnsRequests.sh $1
$pwd_dir/include/rmAlexa.sh

# Clean the temporal directory
cd ..
$pwd_dir/include/rmTmpDir.sh

exit 0

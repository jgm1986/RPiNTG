#!/bin/bash
set -e

# Get the current path.
pwd_dir=$(pwd)

$pwd_dir/include/newTmpDir.sh
cd tmp
$pwd_dir/include/alexa.sh
$pwd_dir/include/dnsRequests.sh $1
$pwd_dir/include/rmAlexa.sh
cd ..
$pwd_dir/include/rmTmpDir.sh


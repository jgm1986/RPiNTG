#!/bin/bash
set -e

# Get the current path.
pwd_dir=$(pwd)

# Clean the temporal directory
$pwd_dir/include/rmTmpDir.sh

# Check if the URL list has been downloades previously.
if [ ! -f tmp/top-1m.csv ]; then
        # Create temporal directory
        $pwd_dir/include/newTmpDir.sh
        cd tmp

        # Download the Alexa list and execute DNS query.
        $pwd_dir/include/alexa.sh
else
        cd tmp
fi


# Infinite loop.
while true; do
	# Execute query
	$pwd_dir/include/dnsRequests.sh 	500 > /dev/null &
	$pwd_dir/include//httpTraffic.sh	200 > /dev/null
	echo "---------------------------------------------"
	echo "Done!"
	echo "---------------------------------------------"
	date > $pwd_dir/tmp/run.log
done

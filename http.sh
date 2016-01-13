#!/bin/bash
set -e

# Get the current path.
pwd_dir=$(pwd)


# Check if the URL list has been downloades previously.
if [ ! -f tmp/top-1m.csv ]; then
        # Create temporal directory
        $pwd_dir/include/newTmpDir.sh
        cd tmp

        # Download the Alexa list 
        $pwd_dir/include/alexa.sh
else
        cd tmp
fi

# Execute query
$pwd_dir/include/httpTraffic.sh $1

# Clean the Alexa list.
# $pwd_dir/include/rmAlexa.sh

# Clean the temporal directory
# cd ..
# $pwd_dir/include/rmTmpDir.sh

exit 0


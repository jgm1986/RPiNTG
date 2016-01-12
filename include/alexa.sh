#!/bin/bash
set -e

echo "Downloading Alexa file..."
wget http://s3.amazonaws.com/alexa-static/top-1m.csv.zip
echo "Done!"

echo "Unzip file..."
unzip top-1m.csv.zip
rm -rf top-1m.csv.zip
echo "Done!"

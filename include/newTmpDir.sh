#!/bin/bash
set -e

echo "Creating new temporal directory..."
if [ -d tmp ] ; then
	echo "   Deleting temporal folder..."
	sudo rm -r tmp
	echo "   Done!"
fi

mkdir tmp
echo "Done!"

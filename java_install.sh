#!/bin/bash

new_version=$(dnf search openjdk > /dev/null 2>&1 | grep "openjdk.x86_64"  2>&1 | sed -n 2p | awk -F "-" {print'$2'})

java_version=$(java -version > /dev/null 2>&1 | grep "version" | awk '{print substr($3,2,2)}')

java_update=$(dnf search openjdk | grep "openjdk.x86_64" 2>&1 | sed -n 2p | awk -F ":" {print'$1'})

if [ $new_version == $java_version ]; then
	echo "No updates required"
else
	dnf install $java_update
fi

#test
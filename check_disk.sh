#!/bin/bash

SPACE_USED=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$SPACE_USED" -gt 80 ]; then 
	echo "WARNING: Your root partition is ${SPACE_USED}% full! You are running out of space!"
else
	echo "Your root partition is ${SPACE_USED}% full. You have plenty of space."
fi

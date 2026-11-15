#!/bin/bash

QUOTES=(
"A wise sysadmin once said: The less full your drive, the more peaceful your life."
"Disk space is like closet space: You always think you have enough until you don't."
"Delete node_modules. Just do it. I dare you."
"May your caches be clear and your root partition be green."
)

SPACE_USED=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$SPACE_USED" -gt 80 ]; then
echo -e "\e[31mWARNING: Your root partition is ${SPACE_USED}% full! You are running out of space!\e[0m"
else
echo -e "\e[32mYour root partition is ${SPACE_USED}% full. You have plenty of space.\e[0m"

# Pick a random quote
RANDOM_QUOTE=${QUOTES[$RANDOM % ${#QUOTES[@]}]}
echo "$RANDOM_QUOTE"
fi

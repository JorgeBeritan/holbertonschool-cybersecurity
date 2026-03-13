#!/bin/bash
awk -F: '$3 >= 1000 {print $1}' "$1" | while read user; do id -nG "$user" | tr ' ' '\n' | grep -E '^(disk|docker|shadow)$' | sed "s/^/$user:/"; done

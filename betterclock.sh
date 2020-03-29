#!/bin/sh

hour=$(date +%T | sed "s/:[0-9]*//g")
ampm="AM"
if [ $hour -gt 12 ]; then
    hour=$(($hour - 12))
    ampm="PM"
fi
echo "$hour:$(date +%T | sed "s/[0-9]*://" | sed "s/:[0-9]*//") $ampm"



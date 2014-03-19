#!/bin/bash -e
if [[ $(synclient | grep TouchpadOff | sed 's/[^0]//g') = '0' ]]; then
    synclient TouchpadOff=1
else
    synclient TouchpadOff=0
fi

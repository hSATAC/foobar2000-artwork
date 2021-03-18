#!/bin/bash
export DISPLAY=:0.0
STATUS=`cat /sys/class/backlight/rpi_backlight/brightness`
if [ "$STATUS" -eq "1" ]; then
  sudo bash -c "echo 0 > /sys/class/backlight/rpi_backlight/brightness"
else
  sudo bash -c "echo 1 > /sys/class/backlight/rpi_backlight/brightness"
fi
exit 0

#!/bin/bash
export DISPLAY=:0.0
STATUS=`xset -q | grep "DPMS is Disabled"`

if [[ $? == 0 ]]; then
  xset dpms force off
else
  xset dpms force on
  xset s off -dpms
fi
exit 0

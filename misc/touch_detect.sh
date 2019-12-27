#!/bin/bash
while true
do
timeout 0.1s evtest /dev/input/event0 > touchscreen_log.txt

grep "type 1 (EV_KEY), code 330 (BTN_TOUCH)" touchscreen_log.txt &>/dev/null
    if [[ $? != 0 ]]; then &>/dev/null
        echo 'No touch detected' &>/dev/null
    else
        bash monitor_toggle.sh &>/dev/null
    fi
done

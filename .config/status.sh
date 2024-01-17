#!/bin/bash

volume_ref=$(pamixer --get-volume-human)

while true; do
    wifi_info=$(nmcli -t -f GENERAL.STATE device show wlo1)
    wifi_status=""

    if [ -n "$wifi_info" ]; then
        wifi_state=$(echo "$wifi_info" | cut -d\  -f2)

        if [ "$wifi_state" = "(connected)" ]; then
            wifi_status="  "
        fi
    fi
    date_str="  $(date '+%d,%b - %H:%M')"
    battery="󰁾 $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | awk '{print $2}')"
    volume=$(pamixer --get-volume-human)

    volume_str=" $volume "
    if [ "$volume" = "$volume_ref" ]; then
      volume_str=""
    fi

    volume_ref="$volume"

    echo "$wifi_status $volume_str $battery $date_str"
    sleep 1  # Adjust the refresh rate as needed
done

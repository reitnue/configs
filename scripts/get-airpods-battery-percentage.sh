#!/usr/local/bin/bash
battery_case=`defaults read /Library/Preferences/com.apple.Bluetooth | grep BatteryPercentCase | tr -d \; | awk '{print $3}'`
if [[ $battery_case = 0 ]]
then
    echo "Disconnected";
else
    battery_left=`defaults read /Library/Preferences/com.apple.Bluetooth | grep BatteryPercentLeft | tr -d \; | awk '{print $3}'`
    battery_right=`defaults read /Library/Preferences/com.apple.Bluetooth | grep BatteryPercentRight | tr -d \; | awk '{print $3}'`
    echo L: $battery_left/R: $battery_right
fi

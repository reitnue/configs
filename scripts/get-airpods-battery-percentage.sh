#!/usr/local/bin/bash
CONNECTION_STATUS=`system_profiler SPBluetoothDataType -xml 2> /dev/null | xpath \
    '//dict[key[contains(text(), "AirPods")]] \
    /dict/key[text()="device_isconnected"] \
    /following-sibling::string[1]/text()' \
    2> /dev/null`

if [[ $CONNECTION_STATUS = "attrib_No" ]]
then
    echo "Not Connected";
else
    BATTERY_CASE=`defaults read \
        /Library/Preferences/com.apple.Bluetooth | grep \
        BatteryPercentCase | tr -d \; | awk '{print $3}'`
    BATTERY_LEFT=`defaults read \
        /Library/Preferences/com.apple.Bluetooth | grep \
        BatteryPercentLeft | tr -d \; | awk '{print $3}'`
    BATTERY_RIGHT=`defaults read \
        /Library/Preferences/com.apple.Bluetooth | grep \
        BatteryPercentRight | tr -d \; | awk '{print $3}'`
    echo CASE:$BATTERY_CASE%/L:$BATTERY_LEFT%/R:$BATTERY_RIGHT%
fi

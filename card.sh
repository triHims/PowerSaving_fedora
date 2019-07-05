#!/bin/bash
echo "cooking suace "
sleep 10



echo 0 > /sys/bus/usb/devices/1-5/power/autosuspend_delay_ms 
ip link set enp2s0 down 
#ethtool -s enp2s0 autoneg off speed 100

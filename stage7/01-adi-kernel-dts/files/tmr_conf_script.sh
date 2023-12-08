#!/bin/bash

echo Setting the sampling rate to $1

cd /
mkdir -p configfs
if ! mountpoint configfs 
then
       	mount -t configfs none configfs
fi
mkdir -p configfs/iio/triggers/hrtimer/tmr0
cat /sys/bus/iio/devices/trigger0/name
cd /sys/bus/iio/devices
echo tmr0 > iio\:device0/trigger/current_trigger
echo 8161 > iio\:device0/buffer/length
echo $1 > trigger0/sampling_frequency
echo 1 > iio\:device0/scan_elements/in_voltage0-voltage1_en
echo 1 > iio\:device0/buffer/enable

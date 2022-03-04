#!/bin/sh
now=$(date +"%F-%H_%M_%S")

echo Processing x-axis
/home/pi/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_*.csv -o /home/pi/klipper_config/resonances/shaper_calibrate_x-${now}.png

echo processing y-axis
/home/pi/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_*.csv -o /home/pi/klipper_config/resonances/shaper_calibrate_y-${now}.png

echo moving files
mv /tmp/resonances_*.csv /home/pi/klipper_config/resonances

echo finished...

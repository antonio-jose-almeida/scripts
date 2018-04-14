#!/bin/bash

TELEGRAF_IP="192.168.1.76"
TELEGRAF_PORT=8094

TABLE="teste"

TEMP=$(/opt/vc/bin/vcgencmd measure_temp | sed -e "s/temp=//" | sed -e "s/'C//")

echo -n "$TABLE,host=$HOSTNAME temperature=$TEMP"  > /dev/udp/$TELEGRAF_IP/$TELEGRAF_PORT

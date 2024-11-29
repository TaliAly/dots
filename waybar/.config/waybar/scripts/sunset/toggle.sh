#!/usr/bin/env bash
source ./wlsunset.sh

if pgrep -x "wlsunset" > /dev/null; then
  pkill wlsunset > /dev/null 2>&1
else
  wlsunset -S 05:30 -s 17:40 > /dev/null 2>&1 &
fi

try

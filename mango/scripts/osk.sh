#!/usr/bin/env bash
if pgrep -x wvkbd-mobintl > /dev/null; then
  pkill -x wvkbd-mobintl
else
  wvkbd-mobintl -L 300 &
fi

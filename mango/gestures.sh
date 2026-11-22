#!/usr/bin/env bash
if [ -n "$1" ]; then
  ORIENT="$1"
else
  CUR=$(wlr-randr 2>/dev/null | awk '/Transform:/ {print $2; exit}')
  case "$CUR" in
    90) ORIENT=1 ;;
    180) ORIENT=2 ;;
    270) ORIENT=3 ;;
    *) ORIENT=0 ;;
  esac
fi

pkill -x lisgd 2>/dev/null

TOUCH_DEV=$(libinput list-devices | awk -v RS="" '/Capabilities:.*touch/ {match($0, /Kernel:[[:space:]]*([^[:space:]]+)/, a); print a[1]; exit}')

if [ -n "$TOUCH_DEV" ]; then
  lisgd -d "$TOUCH_DEV" -o "$ORIENT" \
    -g "1,DU,B,*,R,/home/deces/.config/mango/osk.sh" \
    -g "1,UD,B,*,R,pkill -x wvkbd-mobintl" \
    -g "1,RL,R,*,R,pgrep -x rofi >/dev/null && pkill -x rofi || rofi -show drun &" \
    -g "1,LR,R,*,R,pkill -x rofi" \
    -g "3,LR,*,*,R,mmsg dispatch viewtoleft" \
    -g "3,RL,*,*,R,mmsg dispatch viewtoright" &
fi

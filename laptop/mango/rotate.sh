#!/usr/bin/env bash
OUTPUT="eDP-1"
GESTURES="/home/deces/.config/mango/gestures.sh"

apply_rot() {
  wlr-randr --output "$OUTPUT" --transform "$1"
  "$GESTURES" "$2"
}

if [ "$1" = "auto" ]; then
  stdbuf -oL monitor-sensor | while read -r line; do
    case "$line" in
      *"normal"*) apply_rot normal 0 ;;
      *"bottom-up"*) apply_rot 180 2 ;;
      *"left-up"*) apply_rot 90 1 ;;
      *"right-up"*) apply_rot 270 3 ;;
    esac
  done
else
  CURRENT=$(wlr-randr | awk '/Transform:/ {print $2; exit}')
  case "$CURRENT" in
    normal) apply_rot 90 1 ;;
    90) apply_rot 180 2 ;;
    180) apply_rot 270 3 ;;
    *) apply_rot normal 0 ;;
  esac
fi

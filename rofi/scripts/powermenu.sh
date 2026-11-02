#!/bin/bash

# Seçenekleri belirle (Menüde görünecek sıra)
option=$(printf "Lock\nExit Mango\nReboot\nShutdown" | rofi -dmenu -p "Session")

# Seçime göre işlemi çalıştır
case "$option" in
"Lock")
  swaylock # Kilit ekranı için hyprlock kullanıyorsan
  ;;
"Exit Mango")
  quit
  ;;
"Reboot")
  systemctl reboot
  ;;
"Shutdown")
  systemctl poweroff
  ;;
esac

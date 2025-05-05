#!/usr/bin/env bash

# Terminate already running bar instances
 killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do
sleep 0.2; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini bar1 &
#polybar -c ~/.config/polybar/config.ini bar2 &
#polybar -c ~/.config/polybar/config.ini bar3 &
#polybar -c ~/.config/polybar/config.ini bar4 &
echo "Bars launched..."
disown

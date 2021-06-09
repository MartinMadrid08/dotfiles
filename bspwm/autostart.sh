#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output eDP1 --primary --mode 1366x768 --rotate normal --output HDMI1 --mode 1440x900 --rotate normal --right-of eDP1 &
killall -q polybar &
xinput disable 16 &

feh --bg-fill /home/martin/Imágenes/walpaper.jpg &
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run nm-applet &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
polybar eDP1 &
polybar HDMI1 &

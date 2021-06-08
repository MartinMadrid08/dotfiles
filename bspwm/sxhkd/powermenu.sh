#!/bin/bash
# -*- ENCODING: UTF-8 -*-bash:
rofi -show PowerMenu -modi "PowerMenu:/home/martin/.local/bin/rofi-power-menu  --no-symbols --choices=shutdown/reboot/logout" -lines 3 -width 8 -location 5 -theme-str 'inputbar{ enabled:false; }'
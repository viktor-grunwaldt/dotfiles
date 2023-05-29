#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
		shutdown now
		;;
        reboot)
		reboot
                ;&
        suspend)
                loginctl $op
                ;;
        lock)
				/home/vi/.config/sway/swaylock.sh
                ;;
        logout)
                swaymsg exit
                ;;
esac

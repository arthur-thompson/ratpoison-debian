#!/usr/bin/env sh

MAINFONT="-*-terminus-medium-*-*-*-14-*-*-*-*-*-*-*"
BARHEIGHT=16
FGCOLOR="#000000"
BGCOLOR="#ffffff"

clock() {
	TIME=`date +"%a %d %b %Y %I:%M %p"`
	echo "$TIME"
}

if pgrep lemonbar > /dev/null; then
    killall lemonbar
fi

while true; do

	panel_layout="%{c}$(clock)"
        echo "${panel_layout} "

	sleep 5
done | lemonbar -d -g x"${BARHEIGHT}" -B "${BGCOLOR}" -F "${FGCOLOR}" -f "$MAINFONT" | sh > /dev/null 2>&1

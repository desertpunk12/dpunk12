#!/bin/sh

while true; do
	sudo find /home/dpunk12/Downloads/ -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-center
	echo "Sucess setting wallpaper"
	sleep 30s
done

#!/bin/bash
while :
do
	
	date=$(date +"%b %d  %A      %X ")
	battery=$(acpi | cut -d , -f2-3)"  "
	wifi=""	
	if [ -n "$(ip link | grep UP | grep wlp)" ];then
		wifi="|   $(ip addr | grep inet | grep 255.255.255.255 | cut -d ' ' -f6 | cut -d '/' -f1 ) ";
	fi

	echo "$date   | $battery    $wifi"
	sleep 1
done

#!/bin/bash

if pgrep -x "spotify" > /dev/null
then
	echo $(playerctl metadata artist) - $(playerctl metadata title)
fi
	

#!/bin/bash

# Update dwm status bar every second
while true
do
		volume='volume'
  	RED='\033[0;31m'
    NOCOLOR='\033[0m'
		echo -e "I ${RED}love${NOCOLOR} Linux"
    xsetroot -name "I ${RED}love${NOCOLOR} Linux"
    # Uncomment the line below to enable the lowerbar 
    #xsetroot -name "$upperbar;$lowerbar"
    sleep 1
done

#!/bin/bash

brightnessFile="$(dirname $0)/6BrightnessLevel"
typeset -i level=$(cat $brightnessFile)
case $1 in
+) let "level+=5";;
-) let "level-=5";;
*) echo "+ or - plz"
esac
echo $level > $brightnessFile
brightness=$(echo "scale=2;$level/100" | bc -l)
xrandr --output eDP-1 --brightness $brightness

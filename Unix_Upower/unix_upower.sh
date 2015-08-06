#!/bin/sh

upower -i $1 | grep energy | sed ':a;N;$!ba;s/\n/ /g' | sed 's/ //g' | sed 's/Wh\|W/ /g'

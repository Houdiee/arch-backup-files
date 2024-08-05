#!/bin/bash

current_layout=$(hyprctl getoption general:layout | grep dwindle)
echo $current_layout

if [ "$current_layout" == "str: dwindle"  ]; then
	hyprctl keyword general:layout "master"
else
	hyprctl keyword general:layout "dwindle"
fi

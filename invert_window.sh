#! /bin/bash
if [ "$(pidof compton)" ]; then
	pkill compton
fi
ID=$(xdotool getactivewindow)
#CLASS=$(xprop -id "$ID"  | grep "WM_CLASS" | awk '{print $4}')
CLASS=`xprop WM_CLASS | cut -d\" -f4`
COND="class_g=\"${CLASS}\""
compton --invert-color-include "$COND" &
exit

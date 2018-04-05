SCREEN=`xrandr --listmonitors | awk '{ print $1 " " $4 } ' | perl -ne 'print unless $. == 1' -- | grep "$1" | head -c 1`
xrandr-invert-colors -s $SCREEN

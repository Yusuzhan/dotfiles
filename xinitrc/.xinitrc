# start ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx &

setxkbmap -option caps:ctrl_modifier &
xautolock -time 12 -lock "systemctl suspend" -detectsleep &
sxhkd &
dwmstatus 2>&1 >/dev/null &
exec dwm

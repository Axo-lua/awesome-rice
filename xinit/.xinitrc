xbacklight -set 15 &
xinput set-prop 6 "libinput Accel Profile Enabled" 0, 1, 0 &
setxkbmap -layout us -variant colemak_dh_wide_iso &
mpd --no-daemon &
devmon &

exec dbus-run-session awesome

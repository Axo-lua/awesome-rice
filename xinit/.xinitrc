xbacklight -set 25 &
dbus-run-session pipewire &
xinput set-prop 10 "libinput Accel Profile Enabled" 0, 1, 0 &
setxkbmap -layout us -variant colemak_dh_wide_iso &
xrdb ~/.Xresources
xsetroot -cursor_name Bibata-Modern-Classic &

exec dbus-run-session awesome

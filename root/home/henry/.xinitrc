#Basic functionalities:
setxkbmap -layout gb &
bluetoothctl connect 78:05:09:14:13:A0 &

#Graphics
picom &
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork
nitrogen --restore &
brightnessctl set 10% &

#Speed up file manager startup:
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

#Starts keyring and secrets for applications that needs them:
dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=secrets

#Starts polkit authentication agent
polkit-dumb-agent-git &

#Starts Qtile WM:
qtile start

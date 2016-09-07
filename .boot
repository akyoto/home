#!/bin/sh

# Update all sorts of things
./.update

# Start apps
wmctrl -s 0
google-chrome &
nautilus &
atom &
sleep 2.7

# Music
#google-chrome --new-window play.google.com/music youtube.com soundcloud.com &

# Move terminals
wmctrl -r 'Terminal 1' -t 3
wmctrl -r 'Terminal 2' -t 4
wmctrl -r 'SSH' -t 5

# 2 Terminals
wmctrl -s 3
gnome-terminal --full-screen &
sleep 0.4

wmctrl -s 4
gnome-terminal --full-screen &
sleep 0.4

# SSH connections
wmctrl -s 5
gnome-terminal --full-screen &
sleep 0.9

# Tab 1
xdotool type 'ssh arn'
xdotool key KP_Enter
xdotool key ctrl+shift+t
sleep 0.5

# Tab 2
xdotool type 'ssh cloud'
xdotool key KP_Enter
xdotool key ctrl+shift+t
sleep 0.5

# Tab 3
xdotool type 'ssh ncenter'
xdotool key KP_Enter
sleep 0.1

# Move windows to their workspaces
wmctrl -s 0
wmctrl -r 'Google Chrome' -t 0
wmctrl -r 'Atom' -t 1
wmctrl -r '/home/eduard/projects/' -t 1
wmctrl -r 'Home' -t 6
#wmctrl -r 'Google Play Music' -t 7
#wmctrl -r 'HexChat' -t 8
#wmctrl -r 'Slack' -t 8
#wmctrl -r 'Slack' -b add,maximized_vert,maximized_horz

#!/bin/sh

# OS update
#sudo apt-get update
#sudo apt-get upgrade

# Update git projects
for dir in ~/projects/*; do (echo "Updating $dir" && cd "$dir" && git pull &); done

# Start apps
wmctrl -s 0
google-chrome &
nautilus &
slack &
sleep 2.7
wmctrl -s 3
gnome-terminal --full-screen &
sleep 0.4
wmctrl -s 4
gnome-terminal --full-screen &
sleep 0.4
wmctrl -s 5
gnome-terminal --full-screen -e "bash -c \"ssh arn\"" &
sleep 0.4
wmctrl -s 0
wmctrl -r 'Google Chrome' -t 0
wmctrl -r 'Home' -t 6
wmctrl -r 'Slack' -t 8
wmctrl -r 'Slack' -b add,maximized_vert,maximized_horz

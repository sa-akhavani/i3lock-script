#!/bin/bash
# Take Screenshot
scrot -b 'lockScreen.jpg'
# convert to png and blur
convert lockScreen.jpg -blur 15x5 blurred.png
# put on-image on blurred.png
composite -gravity center /home/ali/src/lockScreen/on-image.png blurred.png final.png

# Remove tmp files and add final image to tmp
rm blurred.png lockScreen.jpg
rm /tmp/lockScreen.png
cp final.png /tmp/lockScreen.png
rm final.png

# Change Keyboard Layout To English
xdotool key alt+shift

# Run i3lock
i3lock -i /tmp/lockScreen.png -d -I 30

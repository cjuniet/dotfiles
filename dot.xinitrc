#!/bin/sh
xsetroot -solid "#405060"
xrdb -merge $HOME/.Xresources
#setxkbmap us -variant colemak
exec ssh-agent i3

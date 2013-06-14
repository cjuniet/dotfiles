#!/bin/sh
SHELL=/bin/sh
xrdb -merge $HOME/.Xresources
xsetroot -solid "#405060"
#setxkbmap us -variant colemak
exec ssh-agent i3

#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Stuff to launch at startup
# Starting with old unused stuff
#
#rhythmbox &
#wine ~/.wine/drive_c/Program/Spotify/spotify.exe &
#orage &
#tint2 &
numlockx &
~/bin/start_script.sh &
#xflux -l 57.42 -g 11.55 -k 3500 &
redshift &
dropboxd &
mpd #~/.mpd/mpd.conf
(sleep 3 && sonata) &
(sleep 2 && spotify) &
(sleep 2 && gpodder) &
(sleep 2 && urxvt) &

exec wmii
until wmii; do
  true
done

#exec openbox-session

#!/bin/bash

LIVEURL=http://www.npr.org/streams/aac/live1_aac.pls
MUSICURL=http://www.npr.org/streams/mp3/live21_mp3.m3u

IFS=$','
CHS="quit,live,music"

select ch in $CHS; do
	if [ "$ch" = "quit" ]; then
	    exit
	elif [ "$ch" = "live" ]; then
	    mplayer -loop 0 -playlist $LIVEURL
	elif [ "$ch" = "music" ]; then
	    mplayer -loop 0 -playlist $MUSICURL
	else
	    continue
	fi
done

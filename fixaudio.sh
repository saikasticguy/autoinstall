#!/bin/bash
proc=$(ps -ef | grep "pulseaudio --start" | tr -s ' ' | cut -d ' ' -f2)
kill $proc
rm -rf /.config/pulse/
pulseaudio --start

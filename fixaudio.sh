#!/bin/bash
proc=$(ps -ef | grep "\bpulseaudio --start\b" | tr -s ' ' | cut -d ' ' -f2)
kill $proc
rm -rf /.config/pulse/
pulseaudio --start
#!/bin/bash
slack status edit \
  --text "AFK offline Thursday, back on Friday"  \
  --emoji ":crescent_moon:"
slack snooze start --minutes 2280
slack presence away

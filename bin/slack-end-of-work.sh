#!/bin/bash
slack status edit \
  --text "AFK end of work day"  \
  --emoji ":crescent_moon:"
slack snooze start --minutes 840
slack presence away

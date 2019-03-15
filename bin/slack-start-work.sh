#!/bin/bash

slack snooze end
slack status clear
slack presence active
slack chat send \
  --channel "#support" \
  --text ":oooh: :hay: :oooh:"


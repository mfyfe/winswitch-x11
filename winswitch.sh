#!/bin/bash

## TODO: Prevent errors when called without $1 and $2 arguments.

# Set active window ID to tmp file.
if [[ $1 == 'set' ]]
then
  echo `xdotool getactivewindow` > /tmp/winswitch.$2
fi

# Switch to Window ID stored in tmp file.
if [ $1 == 'switch' ]
then
  tmp=/tmp/winswitch.$2;
  if [ -f "$tmp" ]; then
    wid=$(cat "$tmp")
    $(xdotool windowactivate $wid)
  fi
fi

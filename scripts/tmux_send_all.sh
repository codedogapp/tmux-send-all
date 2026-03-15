#!/usr/bin/env bash

# CMD passed from '%%'
CMD="${1}"

SESSION=$(tmux display-message -p '#S')
WINDOW=$(tmux display-message -p '#I')

if [[ -z "$SESSION" || -z "$WINDOW" ]]; then
  tmux display-message "Error: Could not detect tmux context."
  exit 1
fi

if [[ -z "$CMD" ]]; then
  exit 0
fi

TARGET="${SESSION}:${WINDOW}"

tmux set-window-option -t "$TARGET" synchronize-panes on
tmux send-keys -t "$TARGET" "$CMD" C-m
tmux set-window-option -t "$TARGET" synchronize-panes off

#!/usr/bin/env bash

if [[ ! -z $0 ]]; then
    tmux new-session -ds "dots" -c "/home/takis/.dots"
    tmux a -t "dots" || tmux switch-client -n -t "dots"
fi

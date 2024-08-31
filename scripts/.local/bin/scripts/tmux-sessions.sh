#!/usr/bin/env bash

folders=~/Projects
ls="eza --icons always"

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find $folders -mindepth 1 -maxdepth 1 -type d | fzf --border --layout=reverse --color --preview='eza --icons always {}')
fi

if [[ -z $selected ]]; then
    exit 0
fi

session=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if ! tmux has-session -t=$session 2> /dev/null; then
    tmux new-session -ds $session -c $selected 
    tmux a -t $session
    exit 0
fi

tmux a -t $session || tmux switch-client -n -t $session

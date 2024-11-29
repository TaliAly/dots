#!/usr/bin/env bash

if [[ ! -z $0 ]]; then
    tmux new-session -ds "ollama"
    tmux a -t "ollama" || tmux switch-client -n -t "ollama"
fi


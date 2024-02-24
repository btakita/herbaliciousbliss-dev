#!/bin/sh
DIR_DEFAULT=$(dirname $0)/../..
DIR="${DIR:-$DIR_DEFAULT}"

cd $DIR
tmux rename-window dev
tmux split-window -v $SHELL
tmux send-keys 'tig' 'C-m'
tmux split-window -h $SHELL
tmux select-pane -t 1
tmux split-window -h $SHELL
tmux send-keys "cd $DIR/app/herbaliciousbliss-site; bun -b run dev" 'C-m'
tmux select-pane -t 1
tmux rename-window herbaliciousbliss

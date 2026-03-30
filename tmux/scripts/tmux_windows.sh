#!/bin/bash

# dotfiles
tmux new-session -s dotfiles -d
tmux send-keys -t dotfiles "cd ~/dotfiles" C-m

# workspace session 
tmux new-session -s workspace -d
tmux send-keys -t workspace "cd ~/workspace" C-m

# Note session
tmux new-session -s note -d
tmux send-keys -t note "cd ~/notes" C-m

# windows session
tmux new-session -s windows -d
tmux send-keys -t windows "cd $WIN_HOME && cd workspace" C-m

tmux attach-session -t workspace

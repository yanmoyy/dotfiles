#!/bin/bash

# dotfiles
tmux new-session -s dotfiles -d
tmux send-keys -t dotfiles "cd ~/dotfiles" C-m

# workspace session 
tmux new-session -s workspace -d
tmux send-keys -t workspace "cd ~/workspace" C-m

tmux attach-session -t workspace

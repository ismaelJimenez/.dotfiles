#!/usr/bin/env bash

stowFolders=("zsh" "tmux")

for folder in ${stowFolders[@]}; do
  echo "Stow $folder"
  stow -D $folder
  stow --target $HOME $folder
done

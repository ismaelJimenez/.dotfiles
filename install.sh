#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CURRENT_DIR=$(pwd)

cd $SCRIPT_DIR

stowFolders=("zsh" "tmux")

for folder in ${stowFolders[@]}; do
  echo "Stow $folder"
  stow -D $folder
  stow --target $HOME $folder
done

cd $CURRENT_DIR

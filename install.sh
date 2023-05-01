#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CURRENT_DIR=$(pwd)

cd $SCRIPT_DIR

rm -rf $HOME/.config/lvim/config.lua

stowFolders=("zsh" "tmux" "lvim")

for folder in ${stowFolders[@]}; do
  echo "Stow $folder"
  stow -D $folder
  stow --target $HOME $folder
done

cd $CURRENT_DIR

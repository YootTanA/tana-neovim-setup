#!/bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# for macos
brew install tree-sitter

# for arch
sudo pacman -S tree-sitter

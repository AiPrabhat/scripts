#!/bin/bash

pkg update -y && pkg upgrade -y

pkg install -y gh
pkg install -y wget
pkg install -y neovim
pkg install -y termux-api
pkg install -y zsh
pkg install -y perl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh

chsh -s /bin/zsh

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

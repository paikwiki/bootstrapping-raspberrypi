#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git-core build-essential

git config --global user.name "paikwiki"
git config --global user.email paikwiki@gmail.com

# vs code
sudo apt install code

# vimrc
cp -n ./srcs/.vimrc ~/.vimrc

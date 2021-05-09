#!/bin/sh

printf "\e[32m[01/03] Exec apt-get update & upgrade?(y/N) \e[0m"
read yn
case $yn in
	[Yy]* ) sudo apt-get update
			sudo apt-get upgrade
esac

printf "\e[32m[01/03] Install git and build-esseantial, Vim(y/N) \e[0m"
read yn
case $yn in
	[Yy]* ) sudo apt-get install git build-essential vim
esac

printf "\e[32m[01/03] Install VS Code?(y/N) \e[0m"
read yn
case $yn in
	[Yy]* ) sudo apt install code
esac

printf "\e[32m[01/03] Install fonts-unfonts-core and ibus-hangul for Korean?(y/N) \e[0m"
read yn
case $yn in
	[Yy]* ) sudo apt install fonts-unfonts-core ibus-hangul
esac

# -- git user ---------------------------------------------------------------- #
git config --global user.name "paikwiki"
git config --global user.email paikwiki@gmail.com

# dotfiles
cp -n ./srcs/.vimrc ~/.vimrc
cp ./srcs/.bashrc ~/.bashrc

# Put versions and useful information
printf "\n====================================\nRaspberryPi Device:\n"
cat /proc/device-tree/model
printf "\n====================================\nOperating Systym:\n"
cat /etc/issue
printf "====================================\nKernel:\n"
uname -a
printf "====================================\nLONG_BIT:\n"
getconf LONG_BIT
printf "====================================\n"
printf "\n* Hello world *\n\n"

#!/bin/bash

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.zshrc > ~/.zshrc

if [ ! -d ~/.ssh ]; then
  mkdir -pv ~/.ssh
fi
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.ssh/config > ~/.ssh/config

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.vimrc > ~/.vimrc
if [ ! -d ~/.config/nvim ]; then
  mkdir -pv ~/.config/nvim
fi
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.config/nvim/init.vim > ~/.config/nvim/init.vim

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tarc > ~/.tarc
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.snaprc > ~/.snaprc

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.gitconfig > ~/.gitconfig

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tmux.conf > ~/.tmux.conf
# Make sure .tmuxinator exists
if [ ! -d ~/.tmuxinator ]; then
  mkdir ~/.tmuxinator
fi
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tmuxinator/trip.yml > ~/.tmuxinator/trip.yml
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tmuxinator/snap.yml > ~/.tmuxinator/snap.yml

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/package-list.txt > ~/.atom/package-list.txt
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/config.cson > ~/.atom/config.cson
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/styles.less > ~/.atom/styles.less

exec zsh # prevent error about compdef
# source ~/.zshrc

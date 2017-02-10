#!/bin/bash

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tarc > ~/.tarc

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.gitconfig > ~/.gitconfig

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.tmux.conf > ~/.tmux.conf

curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/package-list.txt > ~/.atom/package-list.txt
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/config.cson > ~/.atom/config.cson
curl https://raw.githubusercontent.com/yinanfang/Preference/master/Mac/.atom/styles.less > ~/.atom/styles.less

source ~/.zshrc

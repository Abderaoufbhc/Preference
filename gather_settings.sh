#!/bin/bash

# Format: rsync -u --progress ~/.zshrc ./Mac

# Shell config
echo 'Gathering Shell config...'
rsync -uq ~/.zshrc ./Mac
rsync -uq ~/.vimrc ./Mac

if [ -f ~/.tarc ]; then
  echo 'Gathering TripAdvisor Shell config...'
  rsync -uq ~/.tarc ./Mac
fi

# Git
echo 'Gathering Git config...'
rsync -uq ~/.gitconfig ./Mac

# Tmux
if [ -f ~/.tmux.conf ]; then
  echo 'Gathering Tmux config...'
  rsync -uq ~/.tmux.conf ./Mac
fi

# Atom
if hash atom 2>/dev/null; then
  echo 'Gathering Atom Community Packages...'
  mkdir -pv ./Mac/.atom
  apm list --installed --bare > ~/Code/Preference/Mac/.atom/package-list.txt
  rsync -uq ~/.atom/config.cson ./Mac/.atom
else
  echo 'Atom not installed!'
fi

echo 'Done!'

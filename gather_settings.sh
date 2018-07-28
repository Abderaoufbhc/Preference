#!/bin/bash

# Uncomment this to debug
# set -euxo pipefail

# rsync doc:
#   -v, --verbose               increase verbosity
#   -u, --update                skip files that are newer on the receiver
#       --inplace               update destination files in-place
#       --append                append data onto shorter files
#   -q, --quiet                 suppress non-error messages
#       --no-motd               suppress daemon-mode MOTD (see caveat)
#
# Format:
#   - prod:   rsync -uq ~/.zshrc ./Mac
#   - dev:    rsync -u --progress ~/.zshrc ./Mac
#             rsync -uv ~/.zshrc ./Mac
sync() {
  fullSourceFilePath=$1                                         # /Users/compass/.atom/config.cson
  partialRelativePath=${fullSourceFilePath#"$HOME"}             # /.atom/config.cson

  # Create intermediate folder if needed
  # -F      fs  option  defines  the input field separator to be the regular expression fs
  # NF      number of fields in the current record
  countOfSlashes=$(echo "${partialRelativePath}" | awk -F "/" '{print NF-1}')
  if [ $countOfSlashes -gt 1 ]; then                            # countOfSlashes = 2

    dir=`dirname $fullSourceFilePath`
    # Stop the sync if current machine doesn't have this folder
    if [ ! -d $dir ]; then
      echo "Missing folder at ${dir}"
      return
    fi

    # -p      Create intermediate directories as required.
    # -v      Be verbose when creating directories, listing them as they are created.
    mkdir -pv "./Mac"`dirname $partialRelativePath`             # mkdir -pv ./Mac/.atom
  fi

  relativePathForPreferenceRepo="./Mac$partialRelativePath"     # ./Mac/.atom/config.cson
  rsync -uq $fullSourceFilePath $relativePathForPreferenceRepo  # rsync -uq /Users/compass/.atom/config.cson ./Mac/.atom/config.cson
}


shout() {
  echo "Gathering $1 config..."
}

# Shell config
shout "personal shell"
sync ~/.zshrc
sync ~/.vimrc
sync ~/.config/nvim/init.vim


if [ -f ~/.tarc ]; then
  shout "TripAdvisor shell"
  sync ~/.tarc
fi

if [ -f ~/.snaprc ]; then
  shout "SnapChat shell"
  sync ~/.snaprc
fi

# Git
shout "git"
sync ~/.gitconfig

# Tmux
if [ -f ~/.tmux.conf ]; then
  shout "tmux"
  sync ~/.tmux.conf
fi

# Tmuxinator
  shout "tmuxinator"
if [ -f ~/.tmuxinator/trip.yml ]; then
  sync ~/.tmuxinator/trip.yml
fi
if [ -f ~/.tmuxinator/snap.yml ]; then
  sync ~/.tmuxinator/snap.yml
fi

# Atom
if hash atom 2>/dev/null; then
  shout "Atom community packages"
  sync ~/.atom/config.cson
  sync ~/.atom/styles.less
  apm list --installed --bare > ~/Code/Preference/Mac/.atom/package-list.txt
else
  echo 'Atom not installed!'
fi

echo 'Done!'

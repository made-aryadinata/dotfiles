#!/usr/bin/env bash
if ! command -v brew &> /dev/null; then
  echo 'Installing brew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if [ "$(uname -s)" = "Darwin" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ "$(uname -s)" = "Linux" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi
fi

if ! command -v fish &> /dev/null; then
  echo 'Installing fish...'
  brew install fish
fi

fish ~/.dotfiles/init.fish

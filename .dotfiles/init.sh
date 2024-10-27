#!/usr/bin/env bash
install_if_not_exists() {
  local pkg=$1

  if ! brew list --formula | grep -q "^${pkg}\$"; then
    echo "Installing $pkg..."
    brew install "$pkg"
  else
    echo "$pkg is already installed."
  fi
}

if ! command -v brew &> /dev/null; then
  echo 'Installing brew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if [ "$(uname -s)" = "Darwin" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ "$(uname -s)" = "Linux" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi
fi

install_if_not_exists fish
install_if_not_exists fisher
install_if_not_exists fnm
install_if_not_exists starship
install_if_not_exists eza
install_if_not_exists fzf
install_if_not_exists zoxide
install_if_not_exists bitwarden-cli bw
install_if_not_exists nnn
install_if_not_exists fd
install_if_not_exists macchina

fish ~/.dotfiles/init.fish

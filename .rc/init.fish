#!/usr/bin/env fish
if not type -q fisher
  echo 'Installing fisher...'
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
end

if not type -q brew
  echo 'Installing brew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if test (uname -s) = "Darwin"
    eval (/opt/homebrew/bin/brew shellenv)
  else if test (uname -s) = "Linux"
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  end
end

fisher install Gazorby/fish-abbreviation-tips
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish

function install_if_not_exists -a pkg
  if not command -v $pkg
    echo 'Installing '$pkg'...'

    brew install $pkg
  end
end

install_if_not_exists fnm
install_if_not_exists starship
install_if_not_exists eza
install_if_not_exists fzf
install_if_not_exists zoxide

fish_add_path $HOME/.fnm

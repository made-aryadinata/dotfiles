#!/usr/bin/env fish
if not type -q fisher
  echo 'Installing fisher...'
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
end
fisher install Gazorby/fish-abbreviation-tips
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish

if not type -q fnm
  echo 'Installing fnm...'
  curl -fsSL https://fnm.vercel.app/install | bash
  set -U fish_user_paths $HOME/.fnm $fish_user_paths
end

if not type -q starship
  echo 'Installing starship...'
  curl -fsSL https://starship.rs/install.sh | bash
end

#!/usr/bin/env fish
function install_if_not_exists -a pkg cli
  if test -z "$cli"
    set cli $pkg
  end

  if not type -q $cli
    echo "Installing $pkg..."
    brew install $pkg
  end
end

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

set --universal fish_greeting (macchina)
fish_add_path $HOME/.fnm

fisher install Gazorby/fish-abbreviation-tips
fisher install PatrickF1/fzf.fish

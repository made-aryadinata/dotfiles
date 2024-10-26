#!/usr/bin/env fish
function install_if_not_exists -a pkg
  if not type -q $pkg
    echo 'Installing '$pkg'...'

    brew install $pkg
  end
end

install_if_not_exists fisher
install_if_not_exists fnm
install_if_not_exists starship
install_if_not_exists eza
install_if_not_exists fzf
install_if_not_exists zoxide

fish_add_path $HOME/.fnm

fisher install Gazorby/fish-abbreviation-tips
fisher install PatrickF1/fzf.fish

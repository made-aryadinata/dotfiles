set --universal fish_greeting (macchina)
fish_add_path $HOME/.fnm

function install_plugin_if_not_exists -a plugin
  if not fisher list | grep -q "^$plugin\$"
    echo "Installing $plugin..."
    fisher install $plugin
  else
    echo "$plugin is already installed."
  end
end

install_plugin_if_not_exists gazorby/fish-abbreviation-tips
install_plugin_if_not_exists patrickf1/fzf.fish

# My Dotfiles

## Setup
Using bare git repository, with this [article](https://www.atlassian.com/git/tutorials/dotfiles) as reference.

```bash
echo ".cfg" >> .gitignore
git clone --bare git@github.com:made-aryadinata/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```
## Fish
https://fishshell.com/

## NeoVim
### Dependencies
- Node.js
- Python 3

```bash
pip3 install pynvim --user
npm install -g neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +'PlugInstall --sync' +qa
```

## Font
Delugia Code: https://github.com/adam7/delugia-code.

Installation on linux:
```bash
cp ~/Downloads/Delugia.Nerd.Font.Complete.ttf ~/.fonts
fc-cache -f -v
```

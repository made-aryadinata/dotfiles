# My Dotfiles

## Setup
Using bare git repository, with this [article](https://www.atlassian.com/git/tutorials/dotfiles) as reference.

```bash
cd
git clone --bare git@github.com:made-aryadinata/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
.dotfiles/init.sh
```

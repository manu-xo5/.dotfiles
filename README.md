## Installation of my dotfiles

```sh
# paru -S rsync

cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles.git https://github.com/sadikeey/dotfiles.git tmpdotfiles

rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
dots config --local status.showUntrackedFiles no
```

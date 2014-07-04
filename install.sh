#! /bin/bash

DOTFILES=$( cd $(dirname $0) ; pwd -P )

# vim
ln -sf $DOTFILES/vimrc ~/.vimrc
ln -sf $DOTFILES/vim/colors ~/.vim/colors
mkdir -p $HOME/.vim/undo
mkdir -p $HOME/.vim/backups
mkdir -p $HOME/.vim/swaps

# setup vundle
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

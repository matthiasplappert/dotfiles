#! /bin/bash

# setup dotfile structure
mkdir ~/.vim
mkdir ~/.vim/backups
mkdir ~/.vim/undo
mkdir ~/.vim/swaps
ln -s ~/.dotfiles/vim/colors ~/.vim/colors
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
touch ~/.dotfiles/localrc

# Checkout submodule
git submodule sync; git submodule update --init --recursive;

# setup vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


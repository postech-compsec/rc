#!/bin/bash

sudo apt update
sudo apt install exuberant-ctags
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
wget -O ~/.vimrc https://raw.githubusercontent.com/postech-compsec/rc/refs/heads/master/vimrc

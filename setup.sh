#!/bin/bash
# requires python

sudo apt-get update
sudo apt-get upgrade

# move things to home directory and rename (hidden) 
cd setup
mv bashrc_example ~/.bashrc
mv vimrc ~/.vimrc

# (remove the existing vim folder)
rm -rf ~/.vim

mv vim ~/.vim
mv git-completion.bash ~/.git-completion.bash
mv git-prompt.sh ~/.git-prompt.sh
cd

# get vundle (a package manager for vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# get and install miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh

# install other vundle plugins
vim +PluginInstall +qall


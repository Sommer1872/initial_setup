#!/bin/bash
# requires python

sudo apt-get update
sudo apt-get upgrade
sudoe apt-get install git

# get vundle (a package manager for vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# get setup files from my private github repository
# this contains files to 
git clone https://github.com/Sommer1872/initial_setup.git

# move things to home directory and rename (hidden) 
cd setup
mv bashrc_example ~/.bashrc
mv vimrc ~/.vimrc
mv vim ~/.vim
mv git-completion.bash ~/.git-completion.bash
mv git-prompt.sh ~/.git-prompt.sh
cd

# get and install cmake (needed for YouCompleteMe)
sudo apt-get install cmake

# install YouCompleteMe (autocompletion for python in vim)
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd

# install other vundle plugins
vim +PluginInstall +qall
